.class Lcom/android/bluetooth/pbapclient/BluetoothPbapObexAuthenticator;
.super Ljava/lang/Object;
.source "BluetoothPbapObexAuthenticator.java"

# interfaces
.implements Ljavax/obex/Authenticator;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "BtPbapObexAuthenticator"


# instance fields
.field private final mCallback:Landroid/os/Handler;

.field private mSessionKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "0000"

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexAuthenticator;->mSessionKey:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexAuthenticator;->mCallback:Landroid/os/Handler;

    .line 43
    return-void
.end method


# virtual methods
.method public onAuthenticationChallenge(Ljava/lang/String;ZZ)Ljavax/obex/PasswordAuthentication;
    .locals 0

    .line 48
    nop

    .line 51
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexAuthenticator;->mSessionKey:Ljava/lang/String;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    new-instance p1, Ljavax/obex/PasswordAuthentication;

    iget-object p3, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexAuthenticator;->mSessionKey:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-direct {p1, p2, p3}, Ljavax/obex/PasswordAuthentication;-><init>([B[B)V

    move-object p2, p1

    .line 61
    :cond_0
    return-object p2
.end method

.method public onAuthenticationResponse([B)[B
    .locals 0

    .line 68
    const/4 p1, 0x0

    return-object p1
.end method
