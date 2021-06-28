let optionMap = Belt.Option.map
let arrayMap = Belt.Array.map
let withShorthand = (x, y) =>
  switch (x, y) {
  | (Some(_x), Some(_y)) => y
  | (Some(_x), None) => x
  | (None, Some(_y)) => y
  | (None, None) => None
  }

module Identity = {
  type t
  external fromArray: array<'a> => t = "%identity"
  external fromString: string => t = "%identity"
  external fromInt: int => t = "%identity"
  external fromFloat: float => t = "%identity"
  external fromBool: bool => t = "%identity"
  external fromObject: {..} => t = "%identity"
  external fromAbs: 'a => t = "%identity"
}

module Bool = {
  let rec identity = x =>
    switch x {
    | #true_ => true->Identity.fromBool
    | #false_ => false->Identity.fromBool
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module Text = {
  let rec identity = x =>
    switch x {
    | #text(str) => str->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module BoxSize = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...Width.t as w => w->Width.toString->Identity.fromString
    | #...Percentage.t as p => p->Percentage.toString->Identity.fromString
    | #...Length.t as l => l->Length.toString->Identity.fromString
    | #...Var.t as va => va->Var.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString

    | #...Sizes.t as cs => cs->Sizes.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module Width = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...Width.t as w => w->Width.toString->Identity.fromString
    | #...Percentage.t as p => p->Percentage.toString->Identity.fromString
    | #...Length.t as l => l->Length.toString->Identity.fromString
    | #...Var.t as va => va->Var.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString

    | #...Sizes.t as cs => cs->Sizes.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }

  let fromOption = o => o->optionMap(identity)
}

module MaxWidth = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...MaxWidth.t as w => w->MaxWidth.toString->Identity.fromString
    | #...Percentage.t as p => p->Percentage.toString->Identity.fromString
    | #...Length.t as l => l->Length.toString->Identity.fromString
    | #...Var.t as va => va->Var.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString

    | #...Sizes.t as cs => cs->Sizes.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }

  let fromOption = o => o->optionMap(identity)
}

module Height = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...Height.t as w => w->Height.toString->Identity.fromString
    | #...Percentage.t as p => p->Percentage.toString->Identity.fromString
    | #...Length.t as l => l->Length.toString->Identity.fromString
    | #...Var.t as va => va->Var.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString

    | #...Sizes.t as cs => cs->Sizes.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }

  let fromOption = o => o->optionMap(identity)
}

module MaxHeight = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...MaxHeight.t as w => w->MaxHeight.toString->Identity.fromString
    | #...Percentage.t as p => p->Percentage.toString->Identity.fromString
    | #...Length.t as l => l->Length.toString->Identity.fromString
    | #...Var.t as va => va->Var.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString

    | #...Sizes.t as cs => cs->Sizes.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }

  let fromOption = o => o->optionMap(identity)
}

module Display = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...DisplayOutside.t as o => o->DisplayOutside.toString->Identity.fromString
    | #...DisplayInside.t as i => i->DisplayInside.toString->Identity.fromString
    | #...DisplayListItem.t as l => l->DisplayListItem.toString->Identity.fromString
    | #...DisplayInternal.t as i' => i'->DisplayInternal.toString->Identity.fromString
    | #...DisplayBox.t as b => b->DisplayBox.toString->Identity.fromString
    | #...DisplayLegacy.t as l' => l'->DisplayLegacy.toString->Identity.fromString
    | #...Var.t as va => va->Var.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }

  let fromOption = o => o->optionMap(identity)
}

module VerticalAlign = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...VerticalAlign.t as bs => bs->VerticalAlign.toString->Identity.fromString
    | #...Length.t as l => l->Length.toString->Identity.fromString
    | #...Var.t as va => va->Var.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module Overflow = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...Overflow.t as l => l->Overflow.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module Flex = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...Flex.t as f => f->Flex.toString->Identity.fromString
    | #num(n) => n->Js.Float.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module FlexDirection = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...FlexDirection.t as fd => fd->FlexDirection.toString->Identity.fromString
    | #...Var.t as va => va->Var.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module FlexWrap = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...FlexWrap.t as fw => fw->FlexWrap.toString->Identity.fromString
    | #...Var.t as va => va->Var.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module FlexShrink = {
  let rec identity = x =>
    switch x {
    | #num(n) => n->Js.Float.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module FlexGrow = {
  let rec identity = x =>
    switch x {
    | #num(n) => n->Js.Float.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module FlexBasis = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...FlexBasis.t as b => b->FlexBasis.toString->Identity.fromString
    | #...Length.t as l => l->Length.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module Order = {
  let rec identity = x =>
    switch x {
    | #num(n) => n->Js.Int.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module AlignContent = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...AlignContent.t as ac => ac->AlignContent.toString->Identity.fromString
    | #...NormalAlignment.t as na => na->NormalAlignment.toString->Identity.fromString
    | #...BaselineAlignment.t as ba => ba->BaselineAlignment.toString->Identity.fromString
    | #...DistributedAlignment.t as da => da->DistributedAlignment.toString->Identity.fromString
    | #...Var.t as va => va->Var.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module AlignItems = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...AlignItems.t as ai => ai->AlignItems.toString->Identity.fromString
    | #...PositionalAlignment.t as pa => pa->PositionalAlignment.toString->Identity.fromString
    | #...BaselineAlignment.t as ba => ba->BaselineAlignment.toString->Identity.fromString
    | #...Var.t as va => va->Var.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module AlignSelf = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...AlignSelf.t as as_ => as_->AlignSelf.toString->Identity.fromString
    | #...PositionalAlignment.t as pa => pa->PositionalAlignment.toString->Identity.fromString
    | #...BaselineAlignment.t as ba => ba->BaselineAlignment.toString->Identity.fromString
    | #...Var.t as va => va->Var.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module JustifyContent = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...PositionalAlignment.t as pa => pa->PositionalAlignment.toString->Identity.fromString
    | #...NormalAlignment.t as na => na->NormalAlignment.toString->Identity.fromString
    | #...DistributedAlignment.t as da => da->DistributedAlignment.toString->Identity.fromString
    | #...Var.t as va => va->Var.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module JustifyItems = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...PositionalAlignment.t as pa => pa->PositionalAlignment.toString->Identity.fromString
    | #...NormalAlignment.t as na => na->NormalAlignment.toString->Identity.fromString
    | #...BaselineAlignment.t as ba => ba->BaselineAlignment.toString->Identity.fromString
    | #...OverflowAlignment.t as oa => oa->OverflowAlignment.toString->Identity.fromString
    | #...LegacyAlignment.t as la => la->LegacyAlignment.toString->Identity.fromString
    | #...Var.t as va => va->Var.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module JustifySelf = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...JustifySelf.t as j => j->JustifySelf.toString->Identity.fromString
    | #...PositionalAlignment.t as pa => pa->PositionalAlignment.toString->Identity.fromString
    | #...BaselineAlignment.t as ba => ba->BaselineAlignment.toString->Identity.fromString
    | #...Var.t as va => va->Var.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module Margin = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...Length.t as l => l->Length.toString->Identity.fromString
    | #...Margin.t as m => m->Margin.toString->Identity.fromString
    | #...Var.t as va => va->Var.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString

    | #...Spaces.t as csp => csp->Spaces.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module Padding = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...Length.t as l => l->Length.toString->Identity.fromString

    | #...Spaces.t as csp => csp->Spaces.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module Color = {
  open Chakra__AtomicTypes

  let rec identity = x =>
    switch x {
    | #...Colors.t as cs => cs->Colors.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }

  let fromOption = o => o->optionMap(identity)
}

module Opacity = {
  let rec identity = x =>
    switch x {
    | #num(x) => x->Js.Float.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module BackgroundColor = Color

module BorderStyle = {
  open Chakra__AtomicTypes
  let toString = x =>
    switch x {
    | #...BorderStyle.t as b => b->BorderStyle.toString
    | #...Var.t as va => va->Var.toString
    | #...Cascading.t as c => c->Cascading.toString
    }

  let rec identity = x =>
    switch x {
    | #...BorderStyle.t as bs => bs->toString->Identity.fromString
    | #...Var.t as v => v->toString->Identity.fromString
    | #...Cascading.t as c => c->toString->Identity.fromString

    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module Border = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...Borders.t as b => b->Borders.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module BorderRadius = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...Length.t as l => l->Length.toString->Identity.fromString
    | #...Radii.t as cr => cr->Radii.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module BorderWidth = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...BorderWidth.t as bw => bw->BorderWidth.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module BorderColor = Color

module GridGap = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...Percentage.t as p => p->Percentage.toString->Identity.fromString
    | #...Length.t as l => l->Length.toString->Identity.fromString
    | #...Var.t as va => va->Var.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module GridRow = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...GridRow.t as p => p->GridRow.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module GridRowGap = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...Percentage.t as p => p->Percentage.toString->Identity.fromString
    | #...Length.t as l => l->Length.toString->Identity.fromString
    | #...Var.t as va => va->Var.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module GridColumn = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...GridColumn.t as p => p->GridColumn.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module GridColumnGap = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...ColumnGap.t as gcg => gcg->ColumnGap.toString->Identity.fromString
    | #...Percentage.t as p => p->Percentage.toString->Identity.fromString
    | #...Length.t as l => l->Length.toString->Identity.fromString
    | #...Var.t as va => va->Var.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module GridArea = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...GridArea.t as t => t->GridArea.toString->Identity.fromString
    | #...Var.t as va => va->Var.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString
    | #gridArea2(grid1, grid2) => {
        let grid1 = grid1->GridArea.toString
        let grid2 = grid2->GridArea.toString

        let grid = j`$grid1 / $grid2`
        grid->Identity.fromString
      }
    | #gridArea3(grid1, grid2, grid3) => {
        let grid1 = grid1->GridArea.toString
        let grid2 = grid2->GridArea.toString
        let grid3 = grid3->GridArea.toString

        let grid = j`$grid1 / $grid2 / $grid3`
        grid->Identity.fromString
      }
    | #gridArea4(grid1, grid2, grid3, grid4) => {
        let grid1 = grid1->GridArea.toString
        let grid2 = grid2->GridArea.toString
        let grid3 = grid3->GridArea.toString
        let grid4 = grid4->GridArea.toString

        let grid = j`$grid1 / $grid2 / $grid3 / $grid4`
        grid->Identity.fromString
      }
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module GridAutoFlow = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...GridAutoFlow.t as f => f->GridAutoFlow.toString->Identity.fromString
    | #...Var.t as va => va->Var.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module GridAutoRows = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...Dimension.t as d => d->Dimension.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module GridAutoColumns = GridAutoRows

module GridTemplateRows = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...GridLength.t as gl => gl->GridLength.toString->Identity.fromString
    | #grid(arrr_of_gridLength) =>
      arrr_of_gridLength
      ->Js.Array2.map(GridLength.toString)
      ->Js.Array2.joinWith(" ")
      ->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module GridTemplateColumns = GridTemplateRows

module GridTemplateAreas = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...GridTemplateAreas.t as t => t->GridTemplateAreas.toString->Identity.fromString
    | #...Var.t as va => va->Var.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module FontFamily = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...FontFamilyName.t as ff => ff->FontFamilyName.toString->Identity.fromString
    | #...Var.t as va => va->Var.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString
    | #body => "body"->Identity.fromString
    | #heading => "heading"->Identity.fromString
    | #mono => "mono"->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module FontSize = {
  open Chakra__AtomicTypes.Typography
  let rec identity = x =>
    switch x {
    | #...FontSizes.t as fs => fs->FontSizes.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module FontWeight = {
  open Chakra__AtomicTypes.Typography
  let rec identity = x =>
    switch x {
    | #...FontWeights.t as fw => fw->FontWeights.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module LineHeight = {
  open Chakra__AtomicTypes.Typography
  let rec identity = x =>
    switch x {
    | #...LineHeights.t as ls => ls->LineHeights.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module LetterSpacing = {
  open Chakra__AtomicTypes.Typography
  let rec identity = x =>
    switch x {
    | #...LetterSpacings.t as ls => ls->LetterSpacings.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module TextAlign = {
  open Chakra__AtomicTypes.Typography
  let rec identity = x =>
    switch x {
    | #...TextAligns.t as ta => ta->TextAligns.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module FontStyle = {
  open Chakra__AtomicTypes.Typography
  let rec identity = x =>
    switch x {
    | #...FontStyles.t as fs => fs->FontStyles.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module TextDecoration = {
  open Chakra__AtomicTypes.Typography
  let rec identity = x =>
    switch x {
    | #...TextDecorations.t as tt => tt->TextDecorations.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module TextTransform = {
  open Chakra__AtomicTypes.Typography
  let rec identity = x =>
    switch x {
    | #...TextTransforms.t as tt => tt->TextTransforms.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module Gradient = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...Gradients.t as g => g->Gradients.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module BackgroundClip = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...BackgroundClip.t as bc => bc->BackgroundClip.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module Background = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...Colors.t as bc => bc->Colors.toString->Identity.fromString
    | #...Url.t as u => u->Url.toString->Identity.fromString
    | #...Gradients.t as g => g->Gradients.toString->Identity.fromString
    | #none => "none"->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module BackgroundImage = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...BackgroundImage.t as bi => bi->BackgroundImage.toString->Identity.fromString
    | #...Url.t as u => u->Url.toString->Identity.fromString
    | #...Gradients.t as g => g->Gradients.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module BackgroundSize = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #size(x, y) => {
        let x = x->Length.toString
        let y = y->Length.toString
        let size = j`$x $y`
        size->Identity.fromString
      }
    | #auto => "auto"->Identity.fromString
    | #cover => "cover"->Identity.fromString
    | #contain => "contain"->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module BackgroundPosition = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...BackgroundPosition.t as bp => bp->BackgroundPosition.toString->Identity.fromString
    | #hv(h, v) => {
        let h = switch h {
        | #...BackgroundPosition.X.t as h => BackgroundPosition.X.toString(h)
        | #...Length.t as l => Length.toString(l)
        }

        let v = switch v {
        | #...BackgroundPosition.Y.t as v => BackgroundPosition.Y.toString(v)
        | #...Length.t as l => Length.toString(l)
        }

        let b = j`$h $v`
        b->Identity.fromString
      }
    | #...Length.t as l => l->Length.toString->Identity.fromString
    | #...Var.t as va => va->Var.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString

    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module BackgroundRepeat = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...BackgroundRepeat.t as br => br->BackgroundRepeat.toString->Identity.fromString
    | #hv(#...BackgroundRepeat.horizontal as h, #...BackgroundRepeat.vertical as v) => {
        let h = h->BackgroundRepeat.toString
        let v = v->BackgroundRepeat.toString
        let b = j`$h $v`
        b->Identity.fromString
      }
    | #...Var.t as va => va->Var.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module BackgroundAttachment = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...BackgroundAttachment.t as ba => ba->BackgroundAttachment.toString->Identity.fromString
    | #...Url.t as u => u->Url.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module Position = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...Position.t as ba => ba->Position.toString->Identity.fromString
    | #...Var.t as va => va->Var.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module Top = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...Length.t as l => l->Length.toString->Identity.fromString
    | #...Var.t as va => va->Var.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString
    | #...Sizes.t as cs => cs->Sizes.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module Sizes = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...Sizes.t as cs => cs->Sizes.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module Right = Top
module Bottom = Top
module Left = Top
module ZIndex = {
  open Chakra__AtomicTypes
  let rec identity = x =>
    switch x {
    | #...ZIndex.t as z => z->ZIndex.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module Shadow = {
  open Chakra__AtomicTypes
  let string_of_box = (x, y, c, ~blur=?, ~spread=?, ~inset=?, ()) => {
    let x = x->Length.toString
    let y = y->Length.toString
    let c = c->Colors.toString

    switch (blur, spread, inset) {
    | (_, _, Some(_inset)) => j`inset $x $y $c`
    | (Some(radius), None, _) => {
        let radius = radius->Length.toString
        j`$x $y $radius $c`
      }
    | (Some(radius), Some(spread), _) => {
        let radius = radius->Length.toString
        let spread = spread->Length.toString
        j`$x $y $radius $spread $c`
      }
    | _ => j`$x, $y, $c`
    }
  }
  let rec identity = x =>
    switch x {
    | #none => "none"->Identity.fromString
    | #box(x, y, c) => string_of_box(x, y, c, ())->Identity.fromString
    | #blur(x, y, blur, c) => string_of_box(x, y, c, ~blur, ())->Identity.fromString
    | #spread(x, y, blur, spread, c) =>
      string_of_box(x, y, c, ~blur, ~spread, ())->Identity.fromString
    | #inset(x, y, c) => string_of_box(x, y, c, ~inset=true, ())->Identity.fromString
    | #...Var.t as va => va->Var.toString->Identity.fromString
    | #...Cascading.t as c => c->Cascading.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module BoxShadow = Shadow
module TextShadow = Shadow

// Component Specific
module Badge = {
  module Variant = {
    let rec identity = x =>
      switch x {
      | #outline => "outline"->Identity.fromString
      | #solid => "solid"->Identity.fromString
      | #subtle => "subtle"->Identity.fromString
      | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
      }
    let fromOption = o => o->optionMap(identity)
  }
}

module AspectRatio = {
  module Ratio = {
    let rec identity = x =>
      switch x {
      | #num(f) => f->Js.Float.toString->Identity.fromString
      | #ratio(a, b) => {
          let a = a->Js.Float.toString
          let b = b->Js.Float.toString
          j`$a $b`->Identity.fromString
        }
      | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
      }
    let fromOption = o => o->optionMap(identity)
  }
}

module Button = {
  module Size = {
    let rec identity = x =>
      switch x {
      | #sm => "sm"->Identity.fromString
      | #md => "md"->Identity.fromString
      | #lg => "lg"->Identity.fromString
      | #xs => "xs"->Identity.fromString
      | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
      }
    let fromOption = o => o->optionMap(identity)
  }
  module Variant = {
    let rec identity = x =>
      switch x {
      | #link => "link"->Identity.fromString
      | #outline => "outline"->Identity.fromString
      | #solid => "solid"->Identity.fromString
      | #ghost => "ghost"->Identity.fromString
      | #unstyled => "unstyled"->Identity.fromString
      | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
      }
    let fromOption = o => o->optionMap(identity)
  }
  module SpinnerPlacement = {
    let rec identity = x =>
      switch x {
      | #start => "start"->Identity.fromString
      | #end => "end"->Identity.fromString
      | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
      }
    let fromOption = o => o->optionMap(identity)
  }
}

module CloseButton = {
  module Size = {
    let rec identity = x =>
      switch x {
      | #sm => "sm"->Identity.fromString
      | #md => "md"->Identity.fromString
      | #lg => "lg"->Identity.fromString
      | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
      }
    let fromOption = o => o->optionMap(identity)
  }
}

module Divider = {
  module Variant = {
    let rec identity = x =>
      switch x {
      | #dashed => "dashed"->Identity.fromString
      | #solid => "solid"->Identity.fromString
      | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
      }
    let fromOption = o => o->optionMap(identity)
  }
}

module Stat = {
  module Size = {
    let rec identity = x =>
      switch x {
      | #md => "md"->Identity.fromString
      | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
      }
    let fromOption = o => o->optionMap(identity)
  }
}
/**
  this is module for handle 2 type between [string] or [number]
 */
module StringOrNumber = {
  type t = [#str(string) | #num(float)]
  let identity = x =>
    switch x {
    | #str(str) => str->Identity.fromString
    | #num(num) => num->Identity.fromFloat
    }
  let fromOption = o => o->optionMap(identity)
}
/**
  Object fit module 
 */
module ObjectFit = {
  open Chakra__AtomicTypes
  let rec identity = x => {
    switch x {
    | #...ObjectFit.t as o => o->ObjectFit.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }
  }
  let fromOption = o => o->optionMap(identity)
}

module NoOfLines = {
  @ocaml.text("It could be simply when [@unwrap] can use in [JavaScript] Object.")
  let identity = x =>
    switch x {
    | #num(i) => i->Identity.fromInt
    | #array(arr) => arr->Identity.fromArray
    }
  let fromOption = o => o->optionMap(identity)
}

module ViewBox = {
  type t = [#viewBox(float, float, float, float)]
  let identity = x =>
    switch x {
    | #viewBox(a, b, c, d) =>
      let a = a->Js.Float.toString
      let b = b->Js.Float.toString
      let c = c->Js.Float.toString
      let d = d->Js.Float.toString
      `${a} ${b} ${c} ${d}`
    }
  let fromOption = o => o->optionMap(identity)
}

include Chakra__Theme

module Pseudo = {
  @ocaml.docs(
    "BEWARE!, it's still development, maybe some props are invalid or wrong implementation."
  )
  type t
  @obj
  external pseudo: (
    /**
    Margin and Padding
    @see <https://chakra-ui.com/docs/features/style-props#margin-and-padding>
   **/
    ~margin: Identity.t=?,
    ~marginTop: Identity.t=?,
    ~marginRight: Identity.t=?,
    ~marginEnd: Identity.t=?,
    ~marginBottom: Identity.t=?,
    ~marginLeft: Identity.t=?,
    ~marginStart: Identity.t=?,
    // ? ~mx: Identity.t=?,
    // ? ~my: Identity.t=?,
    ~padding: Identity.t=?,
    ~paddingTop: Identity.t=?,
    ~paddingRight: Identity.t=?,
    ~paddingEnd: Identity.t=?,
    ~paddingBottom: Identity.t=?,
    ~paddingLeft: Identity.t=?,
    ~paddingStart: Identity.t=?,
    // ? ~px: Identity.t=?,
    // ? ~py: Identity.t=?,
    /**
    Colors and BackgroundColor
    @see <https://chakra-ui.com/docs/features/style-props#color-and-background-color>
   **/
    // ? ~colorScheme: Identity.t=?,
    ~color: Identity.t=?,
    ~backgroundColor: Identity.t=?,
    ~opacity: Identity.t=?,
    /**
    Gradient
    @see <https://chakra-ui.com/docs/features/style-props#gradient>
   **/
    ~bgGradient: Identity.t=?,
    ~backgroundClip: Identity.t=?,
    /**
    Typography
    @see <https://chakra-ui.com/docs/features/style-props#typography>
   **/
    ~fontFamily: Identity.t=?,
    ~fontSize: Identity.t=?,
    ~fontWeight: Identity.t=?,
    ~letterSpacing: Identity.t=?,
    ~lineHeight: Identity.t=?,
    ~textAlign: Identity.t=?,
    ~fontStyle: Identity.t=?,
    ~textTransform: Identity.t=?,
    ~textDecoration: Identity.t=?,
    /**
    Layout Width and Height
    @see <https://chakra-ui.com/docs/features/style-props#layout-width-and-height>
   **/
    ~width: Identity.t=?,
    ~maxWidth: Identity.t=?,
    ~minWidth: Identity.t=?,
    ~height: Identity.t=?,
    ~maxHeight: Identity.t=?,
    ~minHeight: Identity.t=?,
    ~display: Identity.t=?,
    ~boxSize: Identity.t=?,
    ~verticalAlign: Identity.t=?,
    ~overflow: Identity.t=?,
    ~overflowY: Identity.t=?,
    ~overflowX: Identity.t=?,
    /**
    Flexbox
    @see <https://chakra-ui.com/docs/features/style-props#flexbox>
   **/
    ~alignItems: Identity.t=?,
    ~alignContent: Identity.t=?,
    ~justifyItems: Identity.t=?,
    ~justifyContent: Identity.t=?,
    ~flexWrap: Identity.t=?,
    ~flexDirection: Identity.t=?,
    ~flex: Identity.t=?,
    ~flexGrow: Identity.t=?,
    ~flexShrink: Identity.t=?,
    ~flexBasis: Identity.t=?,
    ~justifySelf: Identity.t=?,
    ~alignSelf: Identity.t=?,
    ~order: Identity.t=?,
    /**
    Grid
    @see <https://chakra-ui.com/docs/features/style-props#grid-layout>
   **/
    ~gridGap: Identity.t=?,
    ~gridRowGap: Identity.t=?,
    ~gridColumnGap: Identity.t=?,
    ~gridColumn: Identity.t=?,
    ~gridRow: Identity.t=?,
    ~gridArea: Identity.t=?,
    ~gridAutoFlow: Identity.t=?,
    ~gridAutoRows: Identity.t=?,
    ~gridAutoColumns: Identity.t=?,
    ~gridTemplateRows: Identity.t=?,
    ~gridTemplateColumns: Identity.t=?,
    ~gridTemplateAreas: Identity.t=?,
    /**
    Background
    @see <https://chakra-ui.com/docs/features/style-props#background>
   **/
    ~background: Identity.t=?,
    ~backgroundImage: Identity.t=?,
    ~backgroundSize: Identity.t=?,
    ~backgroundPosition: Identity.t=?,
    ~backgroundRepeat: Identity.t=?,
    ~backgroundAttachment: Identity.t=?,
    /**
    Borders
    @see<https://chakra-ui.com/docs/features/style-props#border-radius>
   **/
    ~border: Identity.t=?,
    ~borderWidth: Identity.t=?,
    ~borderStyle: Identity.t=?,
    ~borderColor: Identity.t=?,
    ~borderTop: Identity.t=?,
    ~borderTopWidth: Identity.t=?,
    ~borderTopStyle: Identity.t=?,
    ~borderTopColor: Identity.t=?,
    ~borderRight: Identity.t=?,
    ~borderEnd: Identity.t=?,
    ~borderRightWidth: Identity.t=?,
    ~borderEndWidth: Identity.t=?,
    ~borderRightStyle: Identity.t=?,
    ~borderEndStyle: Identity.t=?,
    ~borderRightColor: Identity.t=?,
    ~borderEndColor: Identity.t=?,
    ~borderBottom: Identity.t=?,
    ~borderBottomWidth: Identity.t=?,
    ~borderBottomStyle: Identity.t=?,
    ~borderBottomColor: Identity.t=?,
    ~borderLeft: Identity.t=?,
    ~borderStart: Identity.t=?,
    ~borderLeftWidth: Identity.t=?,
    ~borderStartWidth: Identity.t=?,
    ~borderLeftStyle: Identity.t=?,
    ~borderStartStyle: Identity.t=?,
    ~borderLeftColor: Identity.t=?,
    ~borderStartColor: Identity.t=?,
    ~borderX: Identity.t=?,
    ~borderY: Identity.t=?,
    /**
    Border Radius
    @see<https://chakra-ui.com/docs/features/style-props#border-radius>
   **/
    ~borderRadius: Identity.t=?,
    ~borderTopLeftRadius: Identity.t=?,
    ~borderTopStartRadius: Identity.t=?,
    ~borderTopRightRadius: Identity.t=?,
    ~borderTopEndRadius: Identity.t=?,
    ~borderBottomRightRadius: Identity.t=?,
    ~borderBottomEndRadius: Identity.t=?,
    ~borderBottomLeftRadius: Identity.t=?,
    ~borderBottomStartRadius: Identity.t=?,
    ~borderTopRadius: Identity.t=?,
    ~borderRightRadius: Identity.t=?,
    ~borderEndRadius: Identity.t=?,
    ~borderBottomRadius: Identity.t=?,
    ~borderLeftRadius: Identity.t=?,
    ~borderStartRadius: Identity.t=?,
    /**
    Position
    @see <https://chakra-ui.com/docs/features/style-props#position>
   **/
    ~position: Identity.t=?,
    ~zIndex: Identity.t=?,
    ~top: Identity.t=?,
    ~right: Identity.t=?,
    ~bottom: Identity.t=?,
    ~left: Identity.t=?,
    /**
    Shadow
    @see <https://chakra-ui.com/docs/features/style-props#shadow>
   **/
    ~textShadow: Identity.t=?,
    ~boxShadow: Identity.t=?,
    /**
    TODO
    Other Props 
    partial implemented
    @see <https://chakra-ui.com/docs/features/style-props#other-props>
  ~animation=?,
  ~appearance=?,
  ~transform=?,
  ~transformOrigin=?,
  ~visibility=?,
  ~whiteSpace=?,
  ~userSelect=?,
  ~pointerEvents=?,
  ~wordBreak=?,
  ~overflowWrap=?,
  ~textOverflow=?,
  ~boxSizing=?,
  ~cursor=?,
  ~resize=?,
  ~transition=?,
  ~objectFit=?,
  ~objectPosition=?,
  ~objectPosition=?,
  ~float_=?,
  ~fill=?,
  ~stroke=?,
  ~outline=?,
   **/
    ~fill: Identity.t=?,
    ~stroke: Identity.t=?,
    unit,
  ) => t = ""

  let make = (
    /**
   Margin and Padding
  **/
    ~margin=?,
    ~marginTop=?,
    ~marginRight=?,
    ~marginEnd=?,
    ~marginBottom=?,
    ~marginLeft=?,
    ~marginStart=?,
    ~padding=?,
    ~paddingTop=?,
    ~paddingRight=?,
    ~paddingEnd=?,
    ~paddingBottom=?,
    ~paddingLeft=?,
    ~paddingStart=?,
    // ? ~px=?px->Padding.fromOption,
    // ? ~py=?py->Padding.fromOption,
    /**
      Colors and Background Color
     **/
    ~color=?,
    // ? ~colorScheme=?colorScheme->ColorScheme.fromOption,
    ~backgroundColor=?,
    ~opacity=?,
    /**
      Gradient
     **/
    ~bgGradient=?,
    ~backgroundClip=?,
    /**
      Typography
     **/
    ~fontFamily=?,
    ~fontSize=?,
    ~fontWeight=?,
    ~letterSpacing=?,
    ~lineHeight=?,
    ~textAlign=?,
    ~fontStyle=?,
    ~textTransform=?,
    ~textDecoration=?,
    /**
      Layout Width and Height
     **/
    ~display=?,
    ~height=?,
    ~minHeight=?,
    ~maxHeight=?,
    ~width=?,
    ~minWidth=?,
    ~maxWidth=?,
    ~boxSize=?,
    ~verticalAlign=?,
    ~overflow=?,
    ~overflowY=?,
    ~overflowX=?,
    /**
      Flexbox
     **/
    ~alignItems=?,
    ~alignContent=?,
    ~justifyItems=?,
    ~justifyContent=?,
    ~flexWrap=?,
    ~flexDirection=?,
    ~flex=?,
    ~flexGrow=?,
    ~flexShrink=?,
    ~flexBasis=?,
    ~justifySelf=?,
    ~alignSelf=?,
    ~order=?,
    /**
      Grid
     **/
    ~gridGap=?,
    ~gridRowGap=?,
    ~gridColumnGap=?,
    ~gridColumn=?,
    ~gridRow=?,
    ~gridArea=?,
    ~gridAutoFlow=?,
    ~gridAutoRows=?,
    ~gridAutoColumns=?,
    ~gridTemplateRows=?,
    ~gridTemplateColumns=?,
    ~gridTemplateAreas=?,
    /**
      Background
     **/
    ~background=?,
    ~backgroundImage=?,
    ~backgroundSize=?,
    ~backgroundPosition=?,
    ~backgroundRepeat=?,
    ~backgroundAttachment=?,
    /**
      Borders
     **/
    ~border=?,
    ~borderWidth=?,
    ~borderStyle=?,
    ~borderColor=?,
    ~borderTop=?,
    ~borderTopWidth=?,
    ~borderTopStyle=?,
    ~borderTopColor=?,
    ~borderRight=?,
    ~borderEnd=?,
    ~borderRightWidth=?,
    ~borderEndWidth=?,
    ~borderRightStyle=?,
    ~borderEndStyle=?,
    ~borderRightColor=?,
    ~borderEndColor=?,
    ~borderBottom=?,
    ~borderBottomWidth=?,
    ~borderBottomStyle=?,
    ~borderBottomColor=?,
    ~borderLeft=?,
    ~borderStart=?,
    ~borderLeftWidth=?,
    ~borderStartWidth=?,
    ~borderLeftStyle=?,
    ~borderStartStyle=?,
    ~borderLeftColor=?,
    ~borderStartColor=?,
    ~borderX=?,
    ~borderY=?,
    /**
      Border Radius
     **/
    ~borderRadius=?,
    ~borderTopLeftRadius=?,
    ~borderTopStartRadius=?,
    ~borderTopRightRadius=?,
    ~borderTopEndRadius=?,
    ~borderBottomRightRadius=?,
    ~borderBottomEndRadius=?,
    ~borderBottomLeftRadius=?,
    ~borderBottomStartRadius=?,
    ~borderTopRadius=?,
    ~borderRightRadius=?,
    ~borderEndRadius=?,
    ~borderBottomRadius=?,
    ~borderLeftRadius=?,
    ~borderStartRadius=?,
    /**
      Position
    **/
    ~position=?,
    ~zIndex=?,
    ~top=?,
    ~right=?,
    ~bottom=?,
    ~left=?,
    /**
      Shadow
    **/
    ~textShadow=?,
    ~boxShadow=?,
    /**
      TODO
      Other Props
     **/
    ~fill=?,
    ~stroke=?,
    (),
  ) =>
    pseudo(
      /**
      Margin and Padding
     **/
      ~margin=?margin->Margin.fromOption,
      ~marginTop=?marginTop->Margin.fromOption,
      ~marginRight=?marginRight->Margin.fromOption,
      ~marginEnd=?marginEnd->Margin.fromOption,
      ~marginBottom=?marginBottom->Margin.fromOption,
      ~marginLeft=?marginLeft->Margin.fromOption,
      ~marginStart=?marginStart->Margin.fromOption,
      // ~mx=?mx->Margin.fromOption,
      // ~my=?my->Margin.fromOption,
      ~padding=?padding->Padding.fromOption,
      ~paddingTop=?paddingTop->Padding.fromOption,
      ~paddingRight=?paddingRight->Padding.fromOption,
      ~paddingEnd=?paddingEnd->Padding.fromOption,
      ~paddingBottom=?paddingBottom->Padding.fromOption,
      ~paddingLeft=?paddingLeft->Padding.fromOption,
      ~paddingStart=?paddingStart->Padding.fromOption,
      // ? ~px=?px->Padding.fromOption,
      // ? ~py=?py->Padding.fromOption,
      /**
      Colors and Background Color
     **/
      ~color=?color->Color.fromOption,
      // ? ~colorScheme=?colorScheme->ColorScheme.fromOption,
      ~backgroundColor=?backgroundColor->BackgroundColor.fromOption,
      ~opacity=?opacity->Opacity.fromOption,
      /**
      Gradient
     **/
      ~bgGradient=?bgGradient->Gradient.fromOption,
      ~backgroundClip=?backgroundClip->BackgroundClip.fromOption,
      /**
      Typography
     **/
      ~fontFamily=?fontFamily->FontFamily.fromOption,
      ~fontSize=?fontSize->FontSize.fromOption,
      ~fontWeight=?fontWeight->FontWeight.fromOption,
      ~letterSpacing=?letterSpacing->LetterSpacing.fromOption,
      ~lineHeight=?lineHeight->LineHeight.fromOption,
      ~textAlign=?textAlign->TextAlign.fromOption,
      ~fontStyle=?fontStyle->FontStyle.fromOption,
      ~textTransform=?textTransform->TextTransform.fromOption,
      ~textDecoration=?textDecoration->TextDecoration.fromOption,
      /**
      Layout Width and Height
     **/
      ~display=?display->Display.fromOption,
      ~height=?height->Height.fromOption,
      ~minHeight=?minHeight->Height.fromOption,
      ~maxHeight=?maxHeight->MaxHeight.fromOption,
      ~width=?width->Width.fromOption,
      ~minWidth=?minWidth->Width.fromOption,
      ~maxWidth=?maxWidth->MaxWidth.fromOption,
      ~boxSize=?boxSize->BoxSize.fromOption,
      ~verticalAlign=?verticalAlign->VerticalAlign.fromOption,
      ~overflow=?overflow->Overflow.fromOption,
      ~overflowY=?overflowY->Overflow.fromOption,
      ~overflowX=?overflowX->Overflow.fromOption,
      /**
      Flexbox
     **/
      ~alignItems=?alignItems->AlignItems.fromOption,
      ~alignContent=?alignContent->AlignContent.fromOption,
      ~justifyItems=?justifyItems->JustifyItems.fromOption,
      ~justifyContent=?justifyContent->JustifyContent.fromOption,
      ~flexWrap=?flexWrap->FlexWrap.fromOption,
      ~flexDirection=?flexDirection->FlexDirection.fromOption,
      ~flex=?flex->Flex.fromOption,
      ~flexGrow=?flexGrow->FlexGrow.fromOption,
      ~flexShrink=?flexShrink->FlexShrink.fromOption,
      ~flexBasis=?flexBasis->FlexBasis.fromOption,
      ~justifySelf=?justifySelf->JustifySelf.fromOption,
      ~alignSelf=?alignSelf->AlignSelf.fromOption,
      ~order=?order->Order.fromOption,
      /**
      Grid
     **/
      ~gridGap=?gridGap->GridGap.fromOption,
      ~gridRowGap=?gridRowGap->GridRowGap.fromOption,
      ~gridColumnGap=?gridColumnGap->GridColumnGap.fromOption,
      ~gridColumn=?gridColumn->GridColumn.fromOption,
      ~gridRow=?gridRow->GridRow.fromOption,
      ~gridArea=?gridArea->GridArea.fromOption,
      ~gridAutoFlow=?gridAutoFlow->GridAutoFlow.fromOption,
      ~gridAutoRows=?gridAutoRows->GridAutoRows.fromOption,
      ~gridAutoColumns=?gridAutoColumns->GridAutoColumns.fromOption,
      ~gridTemplateRows=?gridTemplateRows->GridTemplateRows.fromOption,
      ~gridTemplateColumns=?gridTemplateColumns->GridTemplateColumns.fromOption,
      ~gridTemplateAreas=?gridTemplateAreas->GridTemplateAreas.fromOption,
      /**
      Background
     **/
      ~background=?background->Background.fromOption,
      ~backgroundImage=?backgroundImage->BackgroundImage.fromOption,
      ~backgroundSize=?backgroundSize->BackgroundSize.fromOption,
      ~backgroundPosition=?backgroundPosition->BackgroundPosition.fromOption,
      ~backgroundRepeat=?backgroundRepeat->BackgroundRepeat.fromOption,
      ~backgroundAttachment=?backgroundAttachment->BackgroundAttachment.fromOption,
      /**
      Borders
     **/
      ~border=?border->Border.fromOption,
      ~borderWidth=?borderWidth->BorderWidth.fromOption,
      ~borderStyle=?borderStyle->BorderStyle.fromOption,
      ~borderColor=?borderColor->BorderColor.fromOption,
      ~borderTop=?borderTop->Border.fromOption,
      ~borderTopWidth=?borderTopWidth->BorderWidth.fromOption,
      ~borderTopStyle=?borderTopStyle->BorderStyle.fromOption,
      ~borderTopColor=?borderTopColor->BorderColor.fromOption,
      ~borderRight=?borderRight->Border.fromOption,
      ~borderEnd=?borderEnd->Border.fromOption,
      ~borderRightWidth=?borderRightWidth->BorderWidth.fromOption,
      ~borderEndWidth=?borderEndWidth->BorderWidth.fromOption,
      ~borderRightStyle=?borderRightStyle->BorderStyle.fromOption,
      ~borderEndStyle=?borderEndStyle->BorderStyle.fromOption,
      ~borderRightColor=?borderRightColor->BorderColor.fromOption,
      ~borderEndColor=?borderEndColor->BorderColor.fromOption,
      ~borderBottom=?borderBottom->Border.fromOption,
      ~borderBottomWidth=?borderBottomWidth->BorderWidth.fromOption,
      ~borderBottomStyle=?borderBottomStyle->BorderStyle.fromOption,
      ~borderBottomColor=?borderBottomColor->BorderColor.fromOption,
      ~borderLeft=?borderLeft->Border.fromOption,
      ~borderStart=?borderStart->Border.fromOption,
      ~borderLeftWidth=?borderLeftWidth->BorderWidth.fromOption,
      ~borderStartWidth=?borderStartWidth->BorderWidth.fromOption,
      ~borderLeftStyle=?borderLeftStyle->BorderStyle.fromOption,
      ~borderStartStyle=?borderStartStyle->BorderStyle.fromOption,
      ~borderLeftColor=?borderLeftColor->BorderColor.fromOption,
      ~borderStartColor=?borderStartColor->BorderColor.fromOption,
      ~borderX=?borderX->Border.fromOption,
      ~borderY=?borderY->Border.fromOption,
      /**
      Border Radius
     **/
      ~borderRadius=?borderRadius->BorderRadius.fromOption,
      ~borderTopLeftRadius=?borderTopLeftRadius->BorderRadius.fromOption,
      ~borderTopStartRadius=?borderTopStartRadius->BorderRadius.fromOption,
      ~borderTopRightRadius=?borderTopRightRadius->BorderRadius.fromOption,
      ~borderTopEndRadius=?borderTopEndRadius->BorderRadius.fromOption,
      ~borderBottomRightRadius=?borderBottomRightRadius->BorderRadius.fromOption,
      ~borderBottomEndRadius=?borderBottomEndRadius->BorderRadius.fromOption,
      ~borderBottomLeftRadius=?borderBottomLeftRadius->BorderRadius.fromOption,
      ~borderBottomStartRadius=?borderBottomStartRadius->BorderRadius.fromOption,
      ~borderTopRadius=?borderTopRadius->BorderRadius.fromOption,
      ~borderRightRadius=?borderRightRadius->BorderRadius.fromOption,
      ~borderEndRadius=?borderEndRadius->BorderRadius.fromOption,
      ~borderBottomRadius=?borderBottomRadius->BorderRadius.fromOption,
      ~borderLeftRadius=?borderLeftRadius->BorderRadius.fromOption,
      ~borderStartRadius=?borderStartRadius->BorderRadius.fromOption,
      /**
      Position
    **/
      ~position=?position->Position.fromOption,
      ~zIndex=?zIndex->ZIndex.fromOption,
      ~top=?top->Top.fromOption,
      ~right=?right->Right.fromOption,
      ~bottom=?bottom->Bottom.fromOption,
      ~left=?left->Left.fromOption,
      /**
      Shadow
    **/
      ~textShadow=?textShadow->TextShadow.fromOption,
      ~boxShadow=?boxShadow->BoxShadow.fromOption,
      /**
      TODO
      Other Props
     **/
      ~fill=?fill->Color.fromOption,
      ~stroke=?stroke->Color.fromOption,
      (),
    )
}
