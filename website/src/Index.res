open Chakra

module Link = Next.Link

let default = () =>
  <Box>
    <Heading> {"What is this about?"->React.string} </Heading>
    <Text>
      {React.string(`This is a Documentation for project `)}
      <Link href="https://github.com/ri7nz/rescript-chakra">
        <Box _as="span" fontWeight=#bold> {React.string("`rescript-chakra`")} </Box>
      </Link>
      {React.string(`(@chakra-ui/react for ReScript language).`)}
    </Text>
    <Heading size=#sm>
      {`The Documentation is Work in progress. Coming Soon! ✍️ `->React.string}
    </Heading>
    <Link href="https://github.com/ri7nz/rescript-chakra">
      <Text _as=#i> {`Show me in Github. Click Me :)`->React.string} </Text>
    </Link>
  </Box>
