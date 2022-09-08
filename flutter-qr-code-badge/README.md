# Flask List Sorting
---
## TASK 
---
Build a Flutter App that will contain multiple labels and a QR code.
The App will receive a JWT via a fake API request (hardcode the response).

The App will then evaluate the JWT and display the data contained on the Screen. In addition, the App should show if the signature of the JWT is valid.


The QR CODE Should contain the JWT DAta to be validatable by another app.

Data to be extracted:
- name
- last name
- role
- validity period
<br>
<br>
---
### Example layout
---
```
'-------------------'
| |
| [VALID-UNTIL] |
| |
| [QR-CODE] |
| |
| |
| [ROLE] |
| | 
| [VALID-UNTIL] |
| |
| [SIGNATURE-VALID] |
| |
| |
'-------------------'
```
<br>
<br>

---
## Additional Information
---
There are no specifications regarding the methods or any internal/external handling of this task. 
You are free to design UI as You want.


SAMPLE JWT:
```
eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.
eyJyb2xlIjoidmlzaXRvciIsInN1cm5hbWUiOiJNYXgiLCJsYXN0bmFtZSI6Ik11c3RlcmZyYXUiLCJzdWIiOiIxMjM0NTY3ODkxMCIsImV4cCI6MTYxNjIzOTAyMiwiaWF0IjoxNTE2MjM5MDIyfQ.
bj59M_2ohvIMQCMvByOE3pmxA-k-v073jwC1Jlu-gR
```

JWT-KEY:
```
secret
```
<br>
<br>

---
## Time limit
---
Please do not spend more than 1.5h of concentrated work on this task.
If You exceed this period, submit whatever You have.

