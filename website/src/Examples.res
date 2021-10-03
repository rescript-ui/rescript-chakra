type props = {
  msg: string,
  href: string,
}

let default = (props: props) =>
  <div>
    {React.string(props.msg)}
    <a href=props.href target="_blank"> {React.string("`rescript-chakra/examples`")} </a>
  </div>

let getServerSideProps = _ctx => {
  let props = {
    msg: "You can find examples here",
    href: "https://github.com/ri7nz/rescript-chakra/tree/main/examples",
  }
  Js.Promise.resolve({"props": props})
}
