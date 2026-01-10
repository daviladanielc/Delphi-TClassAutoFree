# Delphi-Class-AutoFree


# Description
The TAutoFree class is a minimalist part of another repository of mine that provides the same functionality.
https://github.com/daviladanielc/Delphi-Captcha-Generator

It is an attempt at automating the process of releasing objects in Delphi without the need to use Try Finally blocks to free objects after their usage.

The idea behind this project is not to require the programmer to migrate their classes to an interface and to improve memory management. 
With the TAutoFree class, it's possible to turn a simple class into something like a interface without implementing anything new.

## Instalation

Add the folder where uClassAutoFree.pas is located to the Delphi library path or to your project's search path.

## Contribution

If you believe you can help improve this repository, please submit a PR, and I will review it. Any assistance is welcome.

## Delphi versions 
  - Tested in Delphi 11.0
  > I recommend using Delphi XE or better.

## Usage

Example of how to use the TAutoFree class

```Object pascal

uses uClassAutoFree

var
  LLocal: TMyClass;
begin
  LLocal:= TAutoFree<TMyClass>.New(TMyClass.Create).GetInstance;
  LLocal.FParam:= 'test'; 
  Showmessage(LLocal.FParam);  
  
 //LLocal its destroyed here
end;

```

<p align="center">
<img src="img/Delphi.png" alt="Delphi">
</p>
<h5 align="center">

Made with :heart: for Delphi
</h5>
