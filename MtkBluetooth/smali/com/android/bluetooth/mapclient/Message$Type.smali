.class public final enum Lcom/android/bluetooth/mapclient/Message$Type;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/mapclient/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/bluetooth/mapclient/Message$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/bluetooth/mapclient/Message$Type;

.field public static final enum EMAIL:Lcom/android/bluetooth/mapclient/Message$Type;

.field public static final enum MMS:Lcom/android/bluetooth/mapclient/Message$Type;

.field public static final enum SMS_CDMA:Lcom/android/bluetooth/mapclient/Message$Type;

.field public static final enum SMS_GSM:Lcom/android/bluetooth/mapclient/Message$Type;

.field public static final enum UNKNOWN:Lcom/android/bluetooth/mapclient/Message$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 333
    new-instance v0, Lcom/android/bluetooth/mapclient/Message$Type;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/mapclient/Message$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/mapclient/Message$Type;->UNKNOWN:Lcom/android/bluetooth/mapclient/Message$Type;

    new-instance v0, Lcom/android/bluetooth/mapclient/Message$Type;

    const-string v1, "EMAIL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/mapclient/Message$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/mapclient/Message$Type;->EMAIL:Lcom/android/bluetooth/mapclient/Message$Type;

    new-instance v0, Lcom/android/bluetooth/mapclient/Message$Type;

    const-string v1, "SMS_GSM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/bluetooth/mapclient/Message$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/mapclient/Message$Type;->SMS_GSM:Lcom/android/bluetooth/mapclient/Message$Type;

    new-instance v0, Lcom/android/bluetooth/mapclient/Message$Type;

    const-string v1, "SMS_CDMA"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/bluetooth/mapclient/Message$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/mapclient/Message$Type;->SMS_CDMA:Lcom/android/bluetooth/mapclient/Message$Type;

    new-instance v0, Lcom/android/bluetooth/mapclient/Message$Type;

    const-string v1, "MMS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/bluetooth/mapclient/Message$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/mapclient/Message$Type;->MMS:Lcom/android/bluetooth/mapclient/Message$Type;

    .line 332
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/bluetooth/mapclient/Message$Type;

    sget-object v7, Lcom/android/bluetooth/mapclient/Message$Type;->UNKNOWN:Lcom/android/bluetooth/mapclient/Message$Type;

    aput-object v7, v1, v2

    sget-object v2, Lcom/android/bluetooth/mapclient/Message$Type;->EMAIL:Lcom/android/bluetooth/mapclient/Message$Type;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/bluetooth/mapclient/Message$Type;->SMS_GSM:Lcom/android/bluetooth/mapclient/Message$Type;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/bluetooth/mapclient/Message$Type;->SMS_CDMA:Lcom/android/bluetooth/mapclient/Message$Type;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/android/bluetooth/mapclient/Message$Type;->$VALUES:[Lcom/android/bluetooth/mapclient/Message$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 332
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/bluetooth/mapclient/Message$Type;
    .locals 1

    .line 332
    const-class v0, Lcom/android/bluetooth/mapclient/Message$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/mapclient/Message$Type;

    return-object p0
.end method

.method public static values()[Lcom/android/bluetooth/mapclient/Message$Type;
    .locals 1

    .line 332
    sget-object v0, Lcom/android/bluetooth/mapclient/Message$Type;->$VALUES:[Lcom/android/bluetooth/mapclient/Message$Type;

    invoke-virtual {v0}, [Lcom/android/bluetooth/mapclient/Message$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/bluetooth/mapclient/Message$Type;

    return-object v0
.end method
