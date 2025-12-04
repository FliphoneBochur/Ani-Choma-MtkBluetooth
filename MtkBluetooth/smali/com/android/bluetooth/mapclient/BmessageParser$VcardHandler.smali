.class Lcom/android/bluetooth/mapclient/BmessageParser$VcardHandler;
.super Ljava/lang/Object;
.source "BmessageParser.java"

# interfaces
.implements Lcom/android/vcard/VCardEntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/mapclient/BmessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VcardHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/mapclient/BmessageParser;

.field public vcard:Lcom/android/vcard/VCardEntry;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/mapclient/BmessageParser;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/android/bluetooth/mapclient/BmessageParser$VcardHandler;->this$0:Lcom/android/bluetooth/mapclient/BmessageParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/mapclient/BmessageParser;Lcom/android/bluetooth/mapclient/BmessageParser$1;)V
    .locals 0

    .line 434
    invoke-direct {p0, p1}, Lcom/android/bluetooth/mapclient/BmessageParser$VcardHandler;-><init>(Lcom/android/bluetooth/mapclient/BmessageParser;)V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 0

    .line 448
    return-void
.end method

.method public onEntryCreated(Lcom/android/vcard/VCardEntry;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/android/bluetooth/mapclient/BmessageParser$VcardHandler;->vcard:Lcom/android/vcard/VCardEntry;

    .line 444
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 439
    return-void
.end method
