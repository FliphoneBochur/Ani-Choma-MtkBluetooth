.class public final enum Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/mapclient/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReceptionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;

.field public static final enum COMPLETE:Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;

.field public static final enum FRACTIONED:Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;

.field public static final enum NOTIFICATION:Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;

.field public static final enum UNKNOWN:Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 337
    new-instance v0, Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;->UNKNOWN:Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;

    new-instance v0, Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;

    const-string v1, "COMPLETE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;->COMPLETE:Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;

    new-instance v0, Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;

    const-string v1, "FRACTIONED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;->FRACTIONED:Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;

    new-instance v0, Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;

    const-string v1, "NOTIFICATION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;->NOTIFICATION:Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;

    .line 336
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;

    sget-object v6, Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;->UNKNOWN:Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;

    aput-object v6, v1, v2

    sget-object v2, Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;->COMPLETE:Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;->FRACTIONED:Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;->$VALUES:[Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 336
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;
    .locals 1

    .line 336
    const-class v0, Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;

    return-object p0
.end method

.method public static values()[Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;
    .locals 1

    .line 336
    sget-object v0, Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;->$VALUES:[Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;

    invoke-virtual {v0}, [Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;

    return-object v0
.end method
