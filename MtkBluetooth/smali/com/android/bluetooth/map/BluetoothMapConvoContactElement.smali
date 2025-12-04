.class public Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;
.super Ljava/lang/Object;
.source "BluetoothMapConvoContactElement.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTACT_ID_TYPE_EMAIL:J = 0x2L

.field public static final CONTACT_ID_TYPE_IM:J = 0x3L

.field public static final CONTACT_ID_TYPE_SMS_MMS:J = 0x1L

.field private static final D:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothMapConvoContactElement"

.field private static final V:Z = false

.field private static final XML_ATT_CHAT_STATE:Ljava/lang/String; = "chat_state"

.field private static final XML_ATT_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field private static final XML_ATT_LAST_ACTIVITY:Ljava/lang/String; = "last_activity"

.field private static final XML_ATT_NAME:Ljava/lang/String; = "name"

.field private static final XML_ATT_PRESENCE_AVAILABILITY:Ljava/lang/String; = "presence_availability"

.field private static final XML_ATT_PRESENCE_STATUS:Ljava/lang/String; = "presence_status"

.field private static final XML_ATT_PRIORITY:Ljava/lang/String; = "priority"

.field private static final XML_ATT_UCI:Ljava/lang/String; = "x_bt_uci"

.field private static final XML_ATT_X_BT_UID:Ljava/lang/String; = "x_bt_uid"

.field protected static final XML_TAG_CONVOCONTACT:Ljava/lang/String; = "convocontact"


# instance fields
.field private mBtUid:Lcom/android/bluetooth/SignedLongLong;

.field private mChatState:I

.field private mDisplayName:Ljava/lang/String;

.field private mLastActivity:J

.field private mName:Ljava/lang/String;

.field private mPresenceAvailability:I

.field private mPresenceStatus:Ljava/lang/String;

.field private mPriority:I

.field private mUci:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mUci:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mName:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mDisplayName:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceStatus:Ljava/lang/String;

    .line 56
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceAvailability:I

    .line 57
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPriority:I

    .line 58
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mLastActivity:J

    .line 59
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mBtUid:Lcom/android/bluetooth/SignedLongLong;

    .line 60
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mChatState:I

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIILjava/lang/String;)V
    .locals 4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mUci:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mName:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mDisplayName:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceStatus:Ljava/lang/String;

    .line 56
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceAvailability:I

    .line 57
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPriority:I

    .line 58
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mLastActivity:J

    .line 59
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mBtUid:Lcom/android/bluetooth/SignedLongLong;

    .line 60
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mChatState:I

    .line 75
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mUci:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mName:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mDisplayName:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceStatus:Ljava/lang/String;

    .line 79
    iput p5, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceAvailability:I

    .line 80
    iput-wide p6, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mLastActivity:J

    .line 81
    iput p8, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mChatState:I

    .line 82
    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceStatus:Ljava/lang/String;

    .line 83
    iput p9, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPriority:I

    .line 84
    if-eqz p10, :cond_0

    .line 86
    :try_start_0
    invoke-static {p10}, Lcom/android/bluetooth/SignedLongLong;->fromString(Ljava/lang/String;)Lcom/android/bluetooth/SignedLongLong;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mBtUid:Lcom/android/bluetooth/SignedLongLong;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 87
    :catch_0
    move-exception p1

    .line 88
    const-string p2, "BluetoothMapConvoContactElement"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    :cond_0
    :goto_0
    return-void
.end method

.method public static createFromMapContact(Lcom/android/bluetooth/map/MapContact;Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;
    .locals 5

    .line 64
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    invoke-direct {v0}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;-><init>()V

    .line 65
    iput-object p1, v0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mUci:Ljava/lang/String;

    .line 67
    new-instance p1, Lcom/android/bluetooth/SignedLongLong;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/MapContact;->getId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/android/bluetooth/SignedLongLong;-><init>(JJ)V

    iput-object p1, v0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mBtUid:Lcom/android/bluetooth/SignedLongLong;

    .line 68
    invoke-virtual {p0}, Lcom/android/bluetooth/map/MapContact;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mDisplayName:Ljava/lang/String;

    .line 69
    return-object v0
.end method

.method public static createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 246
    const/4 v1, 0x1

    if-lt v0, v1, :cond_a

    .line 250
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    invoke-direct {v1}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;-><init>()V

    .line 251
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_9

    .line 252
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 253
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 254
    const-string v5, "x_bt_uci"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 255
    iput-object v4, v1, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mUci:Ljava/lang/String;

    goto/16 :goto_1

    .line 256
    :cond_0
    const-string v5, "name"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 257
    iput-object v4, v1, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mName:Ljava/lang/String;

    goto :goto_1

    .line 258
    :cond_1
    const-string v5, "display_name"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 259
    iput-object v4, v1, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mDisplayName:Ljava/lang/String;

    goto :goto_1

    .line 260
    :cond_2
    const-string v5, "chat_state"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 261
    invoke-virtual {v1, v4}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setChatState(Ljava/lang/String;)V

    goto :goto_1

    .line 262
    :cond_3
    const-string v5, "last_activity"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 263
    invoke-virtual {v1, v4}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setLastActivity(Ljava/lang/String;)V

    goto :goto_1

    .line 264
    :cond_4
    const-string v5, "x_bt_uid"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 265
    invoke-static {v4}, Lcom/android/bluetooth/SignedLongLong;->fromString(Ljava/lang/String;)Lcom/android/bluetooth/SignedLongLong;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setBtUid(Lcom/android/bluetooth/SignedLongLong;)V

    goto :goto_1

    .line 266
    :cond_5
    const-string v5, "presence_availability"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 267
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceAvailability:I

    goto :goto_1

    .line 268
    :cond_6
    const-string v5, "presence_status"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 269
    invoke-virtual {v1, v4}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setPresenceStatus(Ljava/lang/String;)V

    goto :goto_1

    .line 270
    :cond_7
    const-string v5, "priority"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 271
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setPriority(I)V

    .line 251
    :cond_8
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 278
    :cond_9
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 279
    return-object v1

    .line 247
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "convocontact is not decorated with attributes"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public compareTo(Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;)I
    .locals 4

    .line 184
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mLastActivity:J

    iget-wide v2, p1, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mLastActivity:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    .line 185
    const/4 p1, 0x1

    return p1

    .line 186
    :cond_0
    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 187
    const/4 p1, -0x1

    return p1

    .line 189
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 31
    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->compareTo(Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;)I

    move-result p1

    return p1
.end method

.method public encode(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    const/4 v0, 0x0

    const-string v1, "convocontact"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 200
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mUci:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 201
    const-string v3, "x_bt_uci"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mDisplayName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 204
    nop

    .line 205
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    const-string v3, "display_name"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 207
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 208
    nop

    .line 209
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    const-string v3, "name"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 211
    :cond_2
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mChatState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 212
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "chat_state"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 214
    :cond_3
    iget-wide v4, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mLastActivity:J

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_4

    .line 215
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->getLastActivityString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "last_activity"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 217
    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mBtUid:Lcom/android/bluetooth/SignedLongLong;

    if-eqz v2, :cond_5

    .line 218
    invoke-virtual {v2}, Lcom/android/bluetooth/SignedLongLong;->toHexString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "x_bt_uid"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    :cond_5
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceAvailability:I

    if-eq v2, v3, :cond_6

    .line 221
    nop

    .line 222
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 221
    const-string v4, "presence_availability"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    :cond_6
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceStatus:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 225
    const-string v4, "presence_status"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 227
    :cond_7
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPriority:I

    if-eq v2, v3, :cond_8

    .line 228
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "priority"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 231
    :cond_8
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 232
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 284
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 285
    return v0

    .line 287
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 288
    return v1

    .line 290
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 291
    return v1

    .line 293
    :cond_2
    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    .line 302
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mChatState:I

    iget v3, p1, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mChatState:I

    if-eq v2, v3, :cond_3

    .line 303
    return v1

    .line 305
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mDisplayName:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 306
    iget-object v2, p1, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mDisplayName:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 307
    return v1

    .line 309
    :cond_4
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 310
    return v1

    .line 320
    :cond_5
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mLastActivity:J

    iget-wide v4, p1, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mLastActivity:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    .line 321
    return v1

    .line 323
    :cond_6
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mName:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 324
    iget-object v2, p1, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mName:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 325
    return v1

    .line 327
    :cond_7
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 328
    return v1

    .line 330
    :cond_8
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceAvailability:I

    iget v3, p1, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceAvailability:I

    if-eq v2, v3, :cond_9

    .line 331
    return v1

    .line 333
    :cond_9
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceStatus:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 334
    iget-object v2, p1, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceStatus:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 335
    return v1

    .line 337
    :cond_a
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceStatus:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 338
    return v1

    .line 340
    :cond_b
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPriority:I

    iget p1, p1, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPriority:I

    if-eq v2, p1, :cond_c

    .line 341
    return v1

    .line 343
    :cond_c
    return v0
.end method

.method public getBtUid()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mBtUid:Lcom/android/bluetooth/SignedLongLong;

    invoke-virtual {v0}, Lcom/android/bluetooth/SignedLongLong;->toHexString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChatState()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mChatState:I

    return v0
.end method

.method public getContactId()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mUci:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastActivityString()Ljava/lang/String;
    .locals 4

    .line 159
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 160
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mLastActivity:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 161
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPresenceAvailability()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceAvailability:I

    return v0
.end method

.method public getPresenceStatus()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPriority:I

    return v0
.end method

.method public setBtUid(Lcom/android/bluetooth/SignedLongLong;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mBtUid:Lcom/android/bluetooth/SignedLongLong;

    .line 143
    return-void
.end method

.method public setChatState(I)V
    .locals 0

    .line 150
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mChatState:I

    .line 151
    return-void
.end method

.method public setChatState(Ljava/lang/String;)V
    .locals 0

    .line 154
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mChatState:I

    .line 155
    return-void
.end method

.method public setContactId(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mUci:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mDisplayName:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setLastActivity(J)V
    .locals 0

    .line 165
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mLastActivity:J

    .line 166
    return-void
.end method

.method public setLastActivity(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 171
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mLastActivity:J

    .line 172
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mName:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setPresenceAvailability(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceAvailability:I

    .line 119
    return-void
.end method

.method public setPresenceStatus(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceStatus:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPriority:I

    .line 127
    return-void
.end method
