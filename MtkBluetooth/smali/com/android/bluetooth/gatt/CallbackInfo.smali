.class Lcom/android/bluetooth/gatt/CallbackInfo;
.super Ljava/lang/Object;
.source "CallbackInfo.java"


# instance fields
.field public address:Ljava/lang/String;

.field public handle:I

.field public status:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/bluetooth/gatt/CallbackInfo;->address:Ljava/lang/String;

    .line 38
    iput p2, p0, Lcom/android/bluetooth/gatt/CallbackInfo;->status:I

    .line 39
    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/bluetooth/gatt/CallbackInfo;->address:Ljava/lang/String;

    .line 32
    iput p2, p0, Lcom/android/bluetooth/gatt/CallbackInfo;->status:I

    .line 33
    iput p3, p0, Lcom/android/bluetooth/gatt/CallbackInfo;->handle:I

    .line 34
    return-void
.end method
