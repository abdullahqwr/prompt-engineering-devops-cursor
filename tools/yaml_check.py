import yaml,sys
files=[r"c:\Users\User\Downloads\prompt-engineering-devops-cursor\module-5-advanced\kubernetes\manifests\deployment-api.yaml",
       r"c:\Users\User\Downloads\prompt-engineering-devops-cursor\module-5-advanced\kubernetes\manifests\service-api.yaml"]
for f in files:
    try:
        with open(f,'r',encoding='utf-8') as fh:
            yaml.safe_load(fh)
        print(f"OK: {f}")
    except Exception as e:
        print(f"ERR: {f} -> {e}")
        sys.exit(1)
