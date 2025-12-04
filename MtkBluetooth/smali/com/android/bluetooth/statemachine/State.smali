.class public Lcom/android/bluetooth/statemachine/State;
.super Ljava/lang/Object;
.source "State.java"

# interfaces
.implements Lcom/android/bluetooth/statemachine/IState;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .line 36
    return-void
.end method

.method public exit()V
    .locals 0

    .line 40
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 61
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 62
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 0

    .line 44
    const/4 p1, 0x0

    return p1
.end method
