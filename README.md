# defined-networking-connect

connect to a defined networking network in your actions workflow

## inputs

- defined-config: base64 encoded yaml config for your node; get this by configuring a test node first and copying the config
  - how-to: `echo $CONFIG | base64 -w0`
- dnclient-version: the version of the dnclient to use; needs the prefix found in the url

## usage

Add the following step in your GHA workflow:

```yaml
- id: set up network
  uses: rssnyder/defined-networking-connect@0.1.0
  with:
    defined-config: ${{ secrets.DEFINED_CONFIG }}
    dnclient-version: "cce733c1/v0.0.8"  # optional
```
