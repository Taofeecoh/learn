# Cluster behaviour

- `restartPolicy` behaviours
    -
    - Pods: always restart but can be changed to `Never` or `OnFailure`
    - Deployments: must `always` restart. Any other value will be rejected.
    - Jobs: Equally flexible as pod.

- `self healing`
    -
    Pods default behavior are not self-healing because they have no `replica` attribute unlike deployments. Hence, if a pod needs to be updated, there needs to be a `force` apply of the manifest file : `kubectl replace --force -f <pod_manifest_file>`. This deletes the existing pod and creates new one with the same configuration.

    

