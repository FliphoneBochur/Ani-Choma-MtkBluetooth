.class public abstract Lcom/android/bluetooth/hfp/HeadsetMessageObject;
.super Ljava/lang/Object;
.source "HeadsetMessageObject.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract buildString(Ljava/lang/StringBuilder;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetMessageObject;->buildString(Ljava/lang/StringBuilder;)V

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
