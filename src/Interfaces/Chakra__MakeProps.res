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

module ColorScheme = {
  open Chakra__AtomicTypes

  let rec identity = x =>
    switch x {
    | #...ColorScheme.t as cs => cs->ColorScheme.toString->Identity.fromString
    | #array(arr) => arr->arrayMap(identity)->Identity.fromArray
    }

  let fromOption = o => o->optionMap(identity)
}

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
