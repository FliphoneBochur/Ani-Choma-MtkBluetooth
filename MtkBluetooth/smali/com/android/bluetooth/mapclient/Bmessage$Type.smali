.class public final enum Lcom/android/bluetooth/mapclient/Bmessage$Type;
.super Ljava/lang/Enum;
.source "Bmessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/mapclient/Bmessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/bluetooth/mapclient/Bmessage$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/bluetooth/mapclient/Bmessage$Type;

.field public static final enum EMAIL:Lcom/android/bluetooth/mapclient/Bmessage$Type;

.field public static final enum MMS:Lcom/android/bluetooth/mapclient/Bmessage$Type;

.field public static final enum SMS_CDMA:Lcom/android/bluetooth/mapclient/Bmessage$Type;

.field public static final enum SMS_GSM:Lcom/android/bluetooth/mapclient/Bmessage$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 168
    new-instance v0, Lcom/android/bluetooth/mapclient/Bmessage$Type;

    const-string v1, "EMAIL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/mapclient/Bmessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/mapclient/Bmessage$Type;->EMAIL:Lcom/android/bluetooth/mapclient/Bmessage$Type;

    new-instance v0, Lcom/android/bluetooth/mapclient/Bmessage$Type;

    const-string v1, "SMS_GSM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/mapclient/Bmessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/mapclient/Bmessage$Type;->SMS_GSM:Lcom/android/bluetooth/mapclient/Bmessage$Type;

    new-instance v0, Lcom/android/bluetooth/mapclient/Bmessage$Type;

    const-string v1, "SMS_CDMA"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/bluetooth/mapclient/Bmessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/mapclient/Bmessage$Type;->SMS_CDMA:Lcom/android/bluetooth/mapclient/Bmessage$Type;

    new-instance v0, Lcom/android/bluetooth/mapclient/Bmessage$Type;

    const-string v1, "MMS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/bluetooth/mapclient/Bmessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/mapclient/Bmessage$Type;->MMS:Lcom/android/bluetooth/mapclient/Bmessage$Type;

    .line 167
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/bluetooth/mapclient/Bmessage$Type;

    sget-object v6, Lcom/android/bluetooth/mapclient/Bmessage$Type;->EMAIL:Lcom/android/bluetooth/mapclient/Bmessage$Type;

    aput-object v6, v1, v2

    sget-object v2, Lcom/android/bluetooth/mapclient/Bmessage$Type;->SMS_GSM:Lcom/android/bluetooth/mapclient/Bmessage$Type;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/bluetooth/mapclient/Bmessage$Type;->SMS_CDMA:Lcom/android/bluetooth/mapclient/Bmessage$Type;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/bluetooth/mapclient/Bmessage$Type;->$VALUES:[Lcom/android/bluetooth/mapclient/Bmessage$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 167
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/bluetooth/mapclient/Bmessage$Type;
    .locals 1

    .line 167
    const-class v0, Lcom/android/bluetooth/mapclient/Bmessage$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/mapclient/Bmessage$Type;

    return-object p0
.end method

.method public static values()[Lcom/android/bluetooth/mapclient/Bmessage$Type;
    .locals 1

    .line 167
    sget-object v0, Lcom/android/bluetooth/mapclient/Bmessage$Type;->$VALUES:[Lcom/android/bluetooth/mapclient/Bmessage$Type;

    invoke-virtual {v0}, [Lcom/android/bluetooth/mapclient/Bmessage$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/bluetooth/mapclient/Bmessage$Type;

    return-object v0
.end method
