# <img class="dcr-icon" src="/img/dcr-icons/Code.svg" /> Source Code Contributions 

---

## Initial Preparation 

A good first step is to read the [Code Contribution Guidelines documentation](ttps://github.com/HcashOrg) to get a good understanding of the policies used by the
project.  That document is primarily focused on the Go codebase but it is still a good start.

The following examples will be split into two sections, one for the Go projects (hc, hcwallet, gominer, etc), and one for projects that do not use Go (HcashOrg, insight, hcwiki, etc).  In all cases, be sure to check out the README.md in each project if you need help setting the particular project up.

---

## Go 

For projects using Go, you can follow this procedure.  hc will be used as the example.  This assumes you already have go1.6 or newer installed and a working `$GOPATH`.

### One time setup
- Fork hc on GitHub
- Run the following commands to obtain hc, all dependencies, and install it:

```bash
$ mkdir -p $GOPATH/src/github.com/HcashOrg/
$ git clone https://github.com/HcashOrg/hcd $GOPATH/src/github.com/HcashOrg/hcd
$ cd $GOPATH/src/github.com/HcashOrg/hcd
$ go dep ensure
$ go install . ./cmd/...
```

- Add a git remote for your fork:

```bash
$ git remote add <yourname> https://github.com/<yourname>/hc.git
```

## Other projects 

For projects not written in Go, the initial setup will depend on the project.  I will use hcwiki as an example here, but the basic steps are the same for any of the projects.  Specific setup can be seen in the project README.md (for example how to install mkdocs to work on hcwiki or electron for HcashOrg).

### One time setup 
- Fork hcwiki on GitHub
- Run the following commands to obtain hc, all dependencies, and install it:

```bash
$ mkdir -p code/HcashOrg
$ cd code/HcashOrg
$ git clone https://github.com/HcashOrg/hcwiki
$ cd hcwiki
```

- Add a git remote for your fork:

```bash
$ git remote add <yourname> https://github.com/<yourname>/hcwiki.git
```

---

## Other Considerations 

There are a few other things to consider when doing a pull request.  In the case of the Go code, there is significant test coverage already.  If you are adding code, you should add tests as well.  If you are fixing something, you need to make sure you do not break any existing tests.  For the Go code, there is a script ```goclean.sh``` in each repo to run the tests and the any static checkers we have.  NO code will be accepted without passing all the tests.  In the case of the node.js code (HcashOrg) all code must pass eslint.  You can check this with the command ```npm run lint```.

If you have any questions for contributing, feel free to ask on irc/slack or GitHub.  HcashOrg team members (and probably community members too) will be happy to help.
