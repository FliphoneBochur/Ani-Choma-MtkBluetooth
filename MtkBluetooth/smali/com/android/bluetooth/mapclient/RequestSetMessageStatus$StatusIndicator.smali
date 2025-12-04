.class public final enum Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;
.super Ljava/lang/Enum;
.source "RequestSetMessageStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/mapclient/RequestSetMessageStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatusIndicator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;

.field public static final enum DELETED:Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;

.field public static final enum READ:Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 25
    new-instance v0, Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;

    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;->READ:Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;

    new-instance v0, Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;

    const-string v1, "DELETED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;->DELETED:Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;

    sget-object v4, Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;->READ:Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;->$VALUES:[Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;
    .locals 1

    .line 25
    const-class v0, Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;

    return-object p0
.end method

.method public static values()[Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;
    .locals 1

    .line 25
    sget-object v0, Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;->$VALUES:[Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;

    invoke-virtual {v0}, [Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;

    return-object v0
.end method
