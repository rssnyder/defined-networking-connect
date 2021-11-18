# defined-networking-connect

connect to a defined networking network in your actions workflow

## usage

Add the following step in your GHA workflow:

```yaml
- id: set up network
  uses: rssnyder/defined-networking-connect@0.1.0
  with:
    enrollment-code: ${{ secrets.ENROLLMENT_CODE }}
    dnclient-version: "cce733c1/v0.0.8"  # optional
```

You can get the enrollment code from the defined networking hosts page.
