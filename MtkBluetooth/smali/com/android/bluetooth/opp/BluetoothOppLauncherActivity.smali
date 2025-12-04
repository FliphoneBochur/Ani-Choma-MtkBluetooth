.class public Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;
.super Landroid/app/Activity;
.source "BluetoothOppLauncherActivity.java"


# static fields
.field private static final D:Z = true

.field private static final MAX_FILES_IN_SINGLE_TASK:I = 0x12c

.field private static final PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "BluetoothOppLauncherActivity"

.field private static final V:Z

.field public static sSendingFileFlag:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    sget-boolean v0, Lcom/android/bluetooth/opp/Constants;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->V:Z

    .line 72
    const-string v0, "[<>&]| {2,}|\r?\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->sSendingFileFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->sendFileInfo(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->launchDevicePicker()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private creatFileForSharedContent(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/net/Uri;
    .locals 11

    .line 292
    const-string v0, ")|("

    const-string v1, "BluetoothOppLauncherActivity"

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 293
    return-object v2

    .line 296
    :cond_0
    nop

    .line 297
    nop

    .line 299
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0e0021

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".html"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 300
    invoke-virtual {p1, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 305
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/></head><body>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 311
    const-string v5, "(?i)(http|https)://"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 313
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    .line 314
    invoke-virtual {v7}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v7}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    .line 315
    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 317
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 318
    :goto_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_6

    .line 319
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 320
    nop

    .line 323
    sget-object v7, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 324
    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 325
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 328
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    .line 328
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 333
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 337
    :goto_1
    goto :goto_2

    :cond_2
    sget-object v7, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 338
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mailto:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 341
    :cond_3
    sget-object v7, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 342
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 341
    :cond_4
    move-object v7, v2

    .line 344
    :goto_2
    if-eqz v7, :cond_5

    .line 345
    const-string v8, "<a href=\"%s\">%s</a>"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v6

    const/4 v6, 0x1

    aput-object v0, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-virtual {p2, v4, v0}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 348
    :cond_5
    goto/16 :goto_0

    .line 349
    :cond_6
    invoke-virtual {p2, v4}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 350
    const-string p2, "</body></html>"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 354
    invoke-virtual {p1, v3, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 355
    if-eqz v0, :cond_7

    .line 356
    :try_start_1
    array-length v4, p2

    invoke-virtual {v0, p2, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 357
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {p2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 358
    if-eqz v2, :cond_7

    .line 360
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Created one file for shared content: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 372
    :catchall_0
    move-exception p1

    move-object v2, v0

    goto/16 :goto_c

    .line 369
    :catch_0
    move-exception p1

    move-object p2, v2

    move-object v2, v0

    goto :goto_5

    .line 367
    :catch_1
    move-exception p1

    move-object p2, v2

    move-object v2, v0

    goto :goto_6

    .line 364
    :catch_2
    move-exception p1

    move-object p2, v2

    move-object v2, v0

    goto :goto_7

    .line 373
    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    .line 374
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_4

    .line 376
    :catch_3
    move-exception p1

    .line 377
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 379
    goto/16 :goto_b

    .line 378
    :cond_8
    :goto_4
    goto/16 :goto_b

    .line 372
    :catchall_1
    move-exception p1

    goto/16 :goto_c

    .line 369
    :catch_4
    move-exception p1

    move-object p2, v2

    .line 370
    :goto_5
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 373
    if-eqz v2, :cond_9

    .line 374
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_9

    .line 376
    :catch_5
    move-exception p1

    goto :goto_8

    .line 367
    :catch_6
    move-exception p1

    move-object p2, v2

    .line 368
    :goto_6
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 373
    if-eqz v2, :cond_9

    .line 374
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_9

    .line 376
    :catch_7
    move-exception p1

    goto :goto_8

    .line 364
    :catch_8
    move-exception p1

    move-object p2, v2

    .line 365
    :goto_7
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileNotFoundException: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 373
    if-eqz v2, :cond_9

    .line 374
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    goto :goto_9

    .line 376
    :catch_9
    move-exception p1

    .line 377
    :goto_8
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 379
    goto :goto_a

    .line 378
    :cond_9
    :goto_9
    nop

    .line 380
    :goto_a
    move-object v2, p2

    :goto_b
    return-object v2

    .line 373
    :goto_c
    if-eqz v2, :cond_a

    .line 374
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_d

    .line 376
    :catch_a
    move-exception p2

    .line 377
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 378
    :cond_a
    :goto_d
    nop

    .line 379
    :goto_e
    throw p1
.end method

.method private static escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 390
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;

    .line 391
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    const/4 v2, 0x0

    .line 397
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 398
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 400
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 401
    const/16 v5, 0x20

    if-ne v4, v5, :cond_2

    .line 403
    sub-int v3, v2, v3

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v3, :cond_1

    .line 404
    const-string v6, "&nbsp;"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 406
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 407
    :cond_2
    const/16 v3, 0xd

    if-eq v4, v3, :cond_6

    const/16 v3, 0xa

    if-ne v4, v3, :cond_3

    goto :goto_1

    .line 409
    :cond_3
    const/16 v3, 0x3c

    if-ne v4, v3, :cond_4

    .line 410
    const-string v3, "&lt;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 411
    :cond_4
    const/16 v3, 0x3e

    if-ne v4, v3, :cond_5

    .line 412
    const-string v3, "&gt;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 413
    :cond_5
    const/16 v3, 0x26

    if-ne v4, v3, :cond_7

    .line 414
    const-string v3, "&amp;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 408
    :cond_6
    :goto_1
    const-string v3, "<br>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    :cond_7
    :goto_2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_0

    .line 417
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 420
    :cond_8
    return-object p0
.end method

.method private isBluetoothAllowed()Z
    .locals 5

    .line 258
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 261
    nop

    .line 262
    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 263
    :goto_0
    if-nez v1, :cond_1

    .line 264
    return v3

    .line 268
    :cond_1
    nop

    .line 269
    const-string v1, "airplane_mode_radios"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    const-string v4, "bluetooth"

    if-eqz v1, :cond_3

    .line 271
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v3

    .line 273
    :goto_2
    if-nez v1, :cond_4

    .line 274
    return v3

    .line 278
    :cond_4
    const-string v1, "airplane_mode_toggleable_radios"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_5

    .line 281
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_3

    :cond_5
    move v0, v2

    .line 283
    :goto_3
    if-eqz v0, :cond_6

    .line 284
    return v3

    .line 288
    :cond_6
    return v2
.end method

.method private launchDevicePicker()V
    .locals 4

    .line 230
    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->isEnabled()Z

    move-result v0

    const-string v1, "BluetoothOppLauncherActivity"

    if-nez v0, :cond_1

    .line 231
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->V:Z

    if-eqz v0, :cond_0

    .line 232
    const-string v0, "Prepare Enable BT!! "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 236
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 237
    goto :goto_0

    .line 238
    :cond_1
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->V:Z

    if-eqz v0, :cond_2

    .line 239
    const-string v0, "BT already enabled!! "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    const/high16 v2, 0x800000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 243
    const/4 v2, 0x0

    const-string v3, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 244
    const/4 v2, 0x2

    const-string v3, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    const-string v2, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    const-string v3, "com.android.bluetooth"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    .line 248
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 247
    const-string v3, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->V:Z

    if-eqz v2, :cond_3

    .line 250
    const-string v2, "Launching android.bluetooth.devicepicker.action.LAUNCH"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 254
    :goto_0
    return-void
.end method

.method private sendFileInfo(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    .line 425
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v0

    .line 427
    :try_start_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/opp/BluetoothOppManager;->saveSendingFileInfo(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 428
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->launchDevicePicker()V

    .line 429
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    goto :goto_0

    .line 430
    :catch_0
    move-exception p1

    .line 431
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->showToast(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    .line 434
    :goto_0
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1

    .line 437
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$4;-><init>(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 443
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->requestWindowFeature(I)Z

    .line 81
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 83
    const-string v2, "BluetoothOppLauncherActivity"

    if-nez v1, :cond_0

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Received "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with null action"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    .line 86
    return-void

    .line 89
    :cond_0
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "android.intent.action.SEND_MULTIPLE"

    if-nez v4, :cond_4

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 204
    :cond_1
    const-string p1, "android.btopp.intent.action.OPEN"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 205
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 206
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->V:Z

    if-eqz v0, :cond_2

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get ACTION_OPEN intent: Uri = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 211
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-class v1, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.bluetooth"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    .line 216
    goto/16 :goto_1

    .line 217
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported action: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    goto/16 :goto_1

    .line 91
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->isBluetoothAllowed()Z

    move-result v4

    if-nez v4, :cond_5

    .line 92
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 94
    const v0, 0x7f0e0004

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const v0, 0x7f0e0003

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    .line 98
    return-void

    .line 101
    :cond_5
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->sSendingFileFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 108
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "android.intent.extra.STREAM"

    if-eqz v3, :cond_b

    .line 110
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 112
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 118
    const-string v3, "; mimetype = "

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    .line 119
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->V:Z

    if-eqz v0, :cond_6

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get ACTION_SEND intent: Uri = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_6
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;
    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    move-result-object v5

    const-string v6, ".vcf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v5

    if-nez v5, :cond_6_allow

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    move-result-object v5

    const-string v6, "vcard"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v5

    if-nez v5, :cond_6_allow

    const-string p1, "This device can only share contacts (.vcf)."

    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->showToast(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    return-void

    :cond_6_allow
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 133
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 134
    return-void

    .line 135
    :cond_7
    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "vcard"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string p1, "This device can only share contacts (.vcf)."

    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->showToast(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    return-void

    .line 136
    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->V:Z

    if-eqz v1, :cond_8

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get ACTION_SEND intent with Extra_text = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_8
    nop

    .line 142
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    .line 141
    invoke-direct {p0, v1, v0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->creatFileForSharedContent(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/net/Uri;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_9

    .line 144
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$2;-><init>(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 152
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 153
    return-void

    .line 155
    :cond_9
    const-string p1, "Error trying to do set text...File not created!"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    .line 157
    return-void

    .line 160
    :cond_a
    const-string p1, "type is null; or sending file URI is null"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    .line 162
    return-void

    .line 164
    :cond_b
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 165
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 167
    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "vcard"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string p1, "This device can only share contacts (.vcf)."

    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->showToast(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    return-void

    .line 168
    sget-boolean v3, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->V:Z

    if-eqz v3, :cond_c

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get ACTION_SHARE_MULTIPLE intent: uris "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n Type= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getTotalTaskCount()I

    move-result v4

    add-int/2addr v3, v4

    .line 172
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getUnstartedSendCount()I

    move-result v4

    sub-int/2addr v3, v4

    const/16 v4, 0x12c

    if-le v3, v4, :cond_e

    .line 173
    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->V:Z

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uris.size() = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", size > 300, return "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_d
    const v0, 0x7f0e0088

    new-array v1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 175
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    .line 176
    return-void

    .line 178
    :cond_e
    new-instance p1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;-><init>(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 196
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 197
    return-void

    .line 199
    :cond_f
    const-string p1, "type is null; or sending files URIs are null"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    .line 201
    return-void

    .line 220
    :cond_10
    :goto_1
    return-void
.end method
