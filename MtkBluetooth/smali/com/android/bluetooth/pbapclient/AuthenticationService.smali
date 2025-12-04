.class public Lcom/android/bluetooth/pbapclient/AuthenticationService;
.super Landroid/app/Service;
.source "AuthenticationService.java"


# instance fields
.field private mAuthenticator:Lcom/android/bluetooth/pbapclient/Authenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 32
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/AuthenticationService;->mAuthenticator:Lcom/android/bluetooth/pbapclient/Authenticator;

    invoke-virtual {p1}, Lcom/android/bluetooth/pbapclient/Authenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 27
    new-instance v0, Lcom/android/bluetooth/pbapclient/Authenticator;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbapclient/Authenticator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/AuthenticationService;->mAuthenticator:Lcom/android/bluetooth/pbapclient/Authenticator;

    .line 28
    return-void
.end method
