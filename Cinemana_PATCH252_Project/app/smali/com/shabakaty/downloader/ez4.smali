.class public Lcom/shabakaty/downloader/ez4;
.super Landroid/os/AsyncTask;
.source "UtilsAsync.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/shabakaty/downloader/rw4;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/shabakaty/downloader/ch2;

.field public c:Ljava/lang/Boolean;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Lcom/shabakaty/downloader/vw1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;ILjava/lang/String;Lcom/shabakaty/downloader/vw1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/ez4;->a:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/ch2;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ch2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/ez4;->b:Lcom/shabakaty/downloader/ch2;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/ez4;->c:Ljava/lang/Boolean;

    .line 5
    iput p3, p0, Lcom/shabakaty/downloader/ez4;->d:I

    .line 6
    iput-object p4, p0, Lcom/shabakaty/downloader/ez4;->e:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/shabakaty/downloader/ez4;->f:Lcom/shabakaty/downloader/vw1;

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, [Ljava/lang/Void;

    const/4 p1, 0x1

    .line 2
    :try_start_0
    iget v0, p0, Lcom/shabakaty/downloader/ez4;->d:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ez4;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 4
    iget v1, p0, Lcom/shabakaty/downloader/ez4;->d:I

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/jz4;->c(Landroid/content/Context;I)Lcom/shabakaty/downloader/rw4;

    move-result-object p1

    goto :goto_4

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_3

    .line 6
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/ez4;->e:Ljava/lang/String;

    if-ne v0, v1, :cond_3

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/qa3;

    invoke-direct {v0, v2, p1}, Lcom/shabakaty/downloader/qa3;-><init>(Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qa3;->b()Lcom/shabakaty/downloader/rw4;

    move-result-object v0

    goto :goto_1

    .line 9
    :cond_3
    new-instance v0, Lcom/shabakaty/downloader/qa3;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/shabakaty/downloader/qa3;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qa3;->b()Lcom/shabakaty/downloader/rw4;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    move-object p1, v0

    goto :goto_4

    .line 10
    :cond_4
    iget v0, p0, Lcom/shabakaty/downloader/ez4;->d:I

    if-ne v0, v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x7

    .line 11
    :goto_2
    iget-object v0, p0, Lcom/shabakaty/downloader/ez4;->f:Lcom/shabakaty/downloader/vw1;

    if-eqz v0, :cond_6

    .line 12
    check-cast v0, Lcom/shabakaty/downloader/ub;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ub;->a(I)V

    .line 13
    :cond_6
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 14
    :catch_0
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :goto_3
    const/4 p1, 0x0

    :goto_4
    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v1, p0

    .line 1
    move-object/from16 v2, p1

    check-cast v2, Lcom/shabakaty/downloader/rw4;

    .line 2
    invoke-super {v1, v2}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, v1, Lcom/shabakaty/downloader/ez4;->f:Lcom/shabakaty/downloader/vw1;

    if-eqz v0, :cond_1a

    .line 4
    iget-object v0, v2, Lcom/shabakaty/downloader/rw4;->a:Ljava/lang/String;

    const-string v3, ".*\\d+.*"

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_19

    .line 7
    iget-object v0, v1, Lcom/shabakaty/downloader/ez4;->f:Lcom/shabakaty/downloader/vw1;

    move-object v4, v0

    check-cast v4, Lcom/shabakaty/downloader/ub;

    const-string v5, "0.0.0.0"

    .line 8
    iget-object v0, v4, Lcom/shabakaty/downloader/ub;->a:Lcom/shabakaty/downloader/vb;

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/vb;->a:Landroid/content/Context;

    .line 10
    instance-of v6, v0, Landroid/app/Activity;

    if-eqz v6, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_e

    .line 11
    :cond_0
    iget-object v0, v4, Lcom/shabakaty/downloader/ub;->a:Lcom/shabakaty/downloader/vb;

    .line 12
    iget-object v0, v0, Lcom/shabakaty/downloader/vb;->a:Landroid/content/Context;

    const/4 v6, 0x0

    .line 13
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v7, v5

    .line 15
    :goto_0
    iget-object v0, v4, Lcom/shabakaty/downloader/ub;->a:Lcom/shabakaty/downloader/vb;

    .line 16
    iget-object v8, v0, Lcom/shabakaty/downloader/vb;->a:Landroid/content/Context;

    .line 17
    iget v9, v0, Lcom/shabakaty/downloader/vb;->r:I

    .line 18
    :try_start_1
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v9, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 19
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 20
    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v8, "[0-9]+(\\.[0-9]+)*"

    const-string v9, "\\.0$1"

    const-string v10, "\\.(\\.|$)"

    const-string v11, ""

    const-string v12, "[^0-9?!\\.]"

    .line 21
    iget-object v13, v2, Lcom/shabakaty/downloader/rw4;->b:Ljava/lang/Integer;

    if-eqz v13, :cond_2

    .line 22
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lez v13, :cond_2

    .line 23
    iget-object v5, v2, Lcom/shabakaty/downloader/rw4;->b:Ljava/lang/Integer;

    .line 24
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v5, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_9

    .line 25
    :cond_2
    invoke-static {v7, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 26
    iget-object v0, v2, Lcom/shabakaty/downloader/rw4;->a:Ljava/lang/String;

    .line 27
    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 28
    :try_start_2
    invoke-virtual {v7, v12, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {v0, v10, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-virtual {v0, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v13, "`"

    const-string v14, "` trimmed: `"

    const-string v15, "Invalid version format. Original: `"

    if-eqz v5, :cond_a

    .line 31
    :try_start_3
    iget-object v5, v2, Lcom/shabakaty/downloader/rw4;->a:Ljava/lang/String;

    .line 32
    invoke-virtual {v5, v12, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 33
    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 34
    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v5, "\\."

    .line 35
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {v7, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 37
    array-length v7, v0

    array-length v8, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_7

    .line 38
    array-length v9, v0

    if-ge v8, v9, :cond_3

    aget-object v9, v0, v8

    .line 39
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_8

    :cond_3
    const/4 v9, 0x0

    .line 40
    :goto_4
    array-length v10, v5

    if-ge v8, v10, :cond_4

    aget-object v10, v5, v8

    .line 41
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_5

    :cond_4
    const/4 v10, 0x0

    :goto_5
    if-ge v9, v10, :cond_5

    const/4 v0, -0x1

    goto :goto_6

    :cond_5
    if-le v9, v10, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_6
    if-gez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    .line 42
    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_9

    .line 43
    :cond_9
    new-instance v0, Ljava/lang/Exception;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_a
    new-instance v5, Ljava/lang/Exception;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 45
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_9

    .line 47
    :cond_b
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 48
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/high16 v5, 0x10000000

    const-string v7, "notification"

    const v8, 0x1020002

    const/4 v9, -0x2

    const/4 v10, 0x2

    if-eqz v0, :cond_13

    .line 49
    iget-object v0, v4, Lcom/shabakaty/downloader/ub;->a:Lcom/shabakaty/downloader/vb;

    .line 50
    iget-object v0, v0, Lcom/shabakaty/downloader/vb;->b:Lcom/shabakaty/downloader/ch2;

    .line 51
    iget-object v0, v0, Lcom/shabakaty/downloader/ch2;->a:Landroid/content/SharedPreferences;

    const-string v11, "prefSuccessfulChecks"

    invoke-interface {v0, v11, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 52
    iget-object v12, v4, Lcom/shabakaty/downloader/ub;->a:Lcom/shabakaty/downloader/vb;

    .line 53
    iget-object v12, v12, Lcom/shabakaty/downloader/vb;->g:Ljava/lang/Integer;

    .line 54
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    rem-int/2addr v13, v12

    if-nez v13, :cond_c

    const/4 v12, 0x1

    goto :goto_a

    :cond_c
    const/4 v12, 0x0

    :goto_a
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 55
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 56
    iget-object v12, v4, Lcom/shabakaty/downloader/ub;->a:Lcom/shabakaty/downloader/vb;

    .line 57
    iget v12, v12, Lcom/shabakaty/downloader/vb;->c:I

    .line 58
    invoke-static {v12}, Lcom/shabakaty/downloader/su;->k(I)I

    move-result v12

    if-eqz v12, :cond_11

    const v13, 0x7f120028

    if-eq v12, v3, :cond_e

    if-eq v12, v10, :cond_d

    goto/16 :goto_c

    .line 59
    :cond_d
    iget-object v8, v4, Lcom/shabakaty/downloader/ub;->a:Lcom/shabakaty/downloader/vb;

    .line 60
    iget-object v9, v8, Lcom/shabakaty/downloader/vb;->a:Landroid/content/Context;

    .line 61
    iget-object v10, v8, Lcom/shabakaty/downloader/vb;->i:Ljava/lang/String;

    const/4 v12, 0x3

    .line 62
    invoke-static {v8, v9, v2, v12}, Lcom/shabakaty/downloader/vb;->a(Lcom/shabakaty/downloader/vb;Landroid/content/Context;Lcom/shabakaty/downloader/rw4;I)Ljava/lang/String;

    move-result-object v8

    iget-object v12, v4, Lcom/shabakaty/downloader/ub;->a:Lcom/shabakaty/downloader/vb;

    .line 63
    iget v14, v12, Lcom/shabakaty/downloader/vb;->d:I

    .line 64
    iget-object v2, v2, Lcom/shabakaty/downloader/rw4;->d:Ljava/net/URL;

    .line 65
    iget v12, v12, Lcom/shabakaty/downloader/vb;->n:I

    .line 66
    invoke-virtual {v9, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 67
    invoke-static {v9, v7}, Lcom/shabakaty/downloader/hz4;->b(Landroid/content/Context;Landroid/app/NotificationManager;)V

    .line 68
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 69
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-virtual {v15, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v9, v6, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 71
    invoke-static {v9, v14, v2}, Lcom/shabakaty/downloader/jz4;->f(Landroid/content/Context;ILjava/net/URL;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v9, v6, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 72
    invoke-static {v9, v3, v10, v8, v12}, Lcom/shabakaty/downloader/hz4;->a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/m03;

    move-result-object v3

    const v5, 0x7f080250

    .line 73
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v5, v8, v2}, Lcom/shabakaty/downloader/m03;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lcom/shabakaty/downloader/m03;

    .line 74
    invoke-virtual {v3}, Lcom/shabakaty/downloader/m03;->c()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v7, v6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_c

    .line 75
    :cond_e
    iget-object v3, v4, Lcom/shabakaty/downloader/ub;->a:Lcom/shabakaty/downloader/vb;

    .line 76
    iget-object v5, v3, Lcom/shabakaty/downloader/vb;->a:Landroid/content/Context;

    .line 77
    invoke-static {v3, v5, v2, v10}, Lcom/shabakaty/downloader/vb;->a(Lcom/shabakaty/downloader/vb;Landroid/content/Context;Lcom/shabakaty/downloader/rw4;I)Ljava/lang/String;

    move-result-object v7

    iget-object v10, v4, Lcom/shabakaty/downloader/ub;->a:Lcom/shabakaty/downloader/vb;

    .line 78
    iget v10, v10, Lcom/shabakaty/downloader/vb;->e:I

    .line 79
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 80
    invoke-static {v10}, Lcom/shabakaty/downloader/su;->k(I)I

    move-result v10

    const/4 v14, 0x1

    if-eq v10, v14, :cond_f

    goto :goto_b

    .line 81
    :cond_f
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 82
    :goto_b
    iget-object v10, v4, Lcom/shabakaty/downloader/ub;->a:Lcom/shabakaty/downloader/vb;

    .line 83
    iget v14, v10, Lcom/shabakaty/downloader/vb;->d:I

    .line 84
    iget-object v2, v2, Lcom/shabakaty/downloader/rw4;->d:Ljava/net/URL;

    .line 85
    iget-object v10, v10, Lcom/shabakaty/downloader/vb;->q:Ljava/lang/Boolean;

    .line 86
    move-object v15, v5

    check-cast v15, Landroid/app/Activity;

    .line 87
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_10

    const/4 v6, -0x2

    .line 88
    :cond_10
    invoke-virtual {v15, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v7, v6}, Lcom/google/android/material/snackbar/Snackbar;->l(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v6

    .line 89
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/shabakaty/downloader/gz4;

    invoke-direct {v8, v5, v14, v2, v10}, Lcom/shabakaty/downloader/gz4;-><init>(Landroid/content/Context;ILjava/net/URL;Ljava/lang/Boolean;)V

    invoke-virtual {v6, v7, v8}, Lcom/google/android/material/snackbar/Snackbar;->n(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 90
    iput-object v6, v3, Lcom/shabakaty/downloader/vb;->p:Lcom/google/android/material/snackbar/Snackbar;

    .line 91
    iget-object v2, v4, Lcom/shabakaty/downloader/ub;->a:Lcom/shabakaty/downloader/vb;

    .line 92
    iget-object v2, v2, Lcom/shabakaty/downloader/vb;->p:Lcom/google/android/material/snackbar/Snackbar;

    .line 93
    invoke-virtual {v2}, Lcom/google/android/material/snackbar/Snackbar;->p()V

    goto :goto_c

    .line 94
    :cond_11
    iget-object v3, v4, Lcom/shabakaty/downloader/ub;->a:Lcom/shabakaty/downloader/vb;

    .line 95
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v3, Lcom/shabakaty/downloader/sw4;

    iget-object v5, v4, Lcom/shabakaty/downloader/ub;->a:Lcom/shabakaty/downloader/vb;

    .line 97
    iget-object v6, v5, Lcom/shabakaty/downloader/vb;->a:Landroid/content/Context;

    .line 98
    iget v7, v5, Lcom/shabakaty/downloader/vb;->d:I

    .line 99
    iget-object v8, v2, Lcom/shabakaty/downloader/rw4;->d:Ljava/net/URL;

    .line 100
    iget-object v5, v5, Lcom/shabakaty/downloader/vb;->q:Ljava/lang/Boolean;

    .line 101
    invoke-direct {v3, v6, v7, v8, v5}, Lcom/shabakaty/downloader/sw4;-><init>(Landroid/content/Context;ILjava/net/URL;Ljava/lang/Boolean;)V

    .line 102
    new-instance v5, Lcom/shabakaty/downloader/mt0;

    invoke-direct {v5, v6}, Lcom/shabakaty/downloader/mt0;-><init>(Landroid/content/Context;)V

    .line 103
    iget-object v6, v4, Lcom/shabakaty/downloader/ub;->a:Lcom/shabakaty/downloader/vb;

    .line 104
    iget-object v7, v6, Lcom/shabakaty/downloader/vb;->a:Landroid/content/Context;

    .line 105
    iget-object v8, v6, Lcom/shabakaty/downloader/vb;->i:Ljava/lang/String;

    const/4 v9, 0x1

    .line 106
    invoke-static {v6, v7, v2, v9}, Lcom/shabakaty/downloader/vb;->a(Lcom/shabakaty/downloader/vb;Landroid/content/Context;Lcom/shabakaty/downloader/rw4;I)Ljava/lang/String;

    move-result-object v2

    iget-object v9, v4, Lcom/shabakaty/downloader/ub;->a:Lcom/shabakaty/downloader/vb;

    .line 107
    iget-object v10, v9, Lcom/shabakaty/downloader/vb;->j:Ljava/lang/String;

    .line 108
    iget-object v12, v9, Lcom/shabakaty/downloader/vb;->k:Ljava/lang/String;

    .line 109
    iget-object v9, v9, Lcom/shabakaty/downloader/vb;->l:Ljava/lang/String;

    const/4 v13, 0x0

    .line 110
    new-instance v14, Landroidx/appcompat/app/b$a;

    invoke-direct {v14, v7}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {v14, v8}, Landroidx/appcompat/app/b$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    move-result-object v7

    .line 112
    invoke-virtual {v7, v2}, Landroidx/appcompat/app/b$a;->c(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    move-result-object v2

    .line 113
    invoke-virtual {v2, v12, v3}, Landroidx/appcompat/app/b$a;->f(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object v2

    .line 114
    invoke-virtual {v2, v10, v13}, Landroidx/appcompat/app/b$a;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object v2

    .line 115
    invoke-virtual {v2, v9, v5}, Landroidx/appcompat/app/b$a;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/app/b$a;->create()Landroidx/appcompat/app/b;

    move-result-object v2

    .line 116
    iput-object v2, v6, Lcom/shabakaty/downloader/vb;->o:Landroidx/appcompat/app/b;

    .line 117
    iget-object v2, v4, Lcom/shabakaty/downloader/ub;->a:Lcom/shabakaty/downloader/vb;

    .line 118
    iget-object v3, v2, Lcom/shabakaty/downloader/vb;->o:Landroidx/appcompat/app/b;

    .line 119
    iget-object v2, v2, Lcom/shabakaty/downloader/vb;->q:Ljava/lang/Boolean;

    .line 120
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 121
    iget-object v2, v4, Lcom/shabakaty/downloader/ub;->a:Lcom/shabakaty/downloader/vb;

    .line 122
    iget-object v2, v2, Lcom/shabakaty/downloader/vb;->o:Landroidx/appcompat/app/b;

    .line 123
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 124
    :cond_12
    :goto_c
    iget-object v2, v4, Lcom/shabakaty/downloader/ub;->a:Lcom/shabakaty/downloader/vb;

    .line 125
    iget-object v2, v2, Lcom/shabakaty/downloader/vb;->b:Lcom/shabakaty/downloader/ch2;

    .line 126
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 127
    iget-object v3, v2, Lcom/shabakaty/downloader/ch2;->b:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v3, v11, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 128
    iget-object v0, v2, Lcom/shabakaty/downloader/ch2;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_e

    .line 129
    :cond_13
    iget-object v0, v4, Lcom/shabakaty/downloader/ub;->a:Lcom/shabakaty/downloader/vb;

    .line 130
    iget-object v0, v0, Lcom/shabakaty/downloader/vb;->h:Ljava/lang/Boolean;

    .line 131
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 132
    iget-object v0, v4, Lcom/shabakaty/downloader/ub;->a:Lcom/shabakaty/downloader/vb;

    .line 133
    iget v0, v0, Lcom/shabakaty/downloader/vb;->c:I

    .line 134
    invoke-static {v0}, Lcom/shabakaty/downloader/su;->k(I)I

    move-result v0

    if-eqz v0, :cond_18

    const/4 v2, 0x1

    if-eq v0, v2, :cond_15

    if-eq v0, v10, :cond_14

    goto/16 :goto_e

    .line 135
    :cond_14
    iget-object v0, v4, Lcom/shabakaty/downloader/ub;->a:Lcom/shabakaty/downloader/vb;

    .line 136
    iget-object v2, v0, Lcom/shabakaty/downloader/vb;->a:Landroid/content/Context;

    .line 137
    iget-object v3, v0, Lcom/shabakaty/downloader/vb;->m:Ljava/lang/String;

    .line 138
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/vb;->b(Lcom/shabakaty/downloader/vb;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v4, Lcom/shabakaty/downloader/ub;->a:Lcom/shabakaty/downloader/vb;

    .line 139
    iget v4, v4, Lcom/shabakaty/downloader/vb;->n:I

    .line 140
    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 141
    invoke-static {v2, v7}, Lcom/shabakaty/downloader/hz4;->b(Landroid/content/Context;Landroid/app/NotificationManager;)V

    .line 142
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 143
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 144
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-static {v2, v6, v8, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 145
    invoke-static {v2, v5, v3, v0, v4}, Lcom/shabakaty/downloader/hz4;->a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/m03;

    move-result-object v0

    const/16 v2, 0x10

    const/4 v3, 0x1

    .line 146
    invoke-virtual {v0, v2, v3}, Lcom/shabakaty/downloader/m03;->i(IZ)V

    .line 147
    invoke-virtual {v0}, Lcom/shabakaty/downloader/m03;->c()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v7, v6, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_e

    :cond_15
    const/4 v3, 0x1

    .line 148
    iget-object v0, v4, Lcom/shabakaty/downloader/ub;->a:Lcom/shabakaty/downloader/vb;

    .line 149
    iget-object v2, v0, Lcom/shabakaty/downloader/vb;->a:Landroid/content/Context;

    .line 150
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/vb;->b(Lcom/shabakaty/downloader/vb;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v4, Lcom/shabakaty/downloader/ub;->a:Lcom/shabakaty/downloader/vb;

    .line 151
    iget v7, v7, Lcom/shabakaty/downloader/vb;->e:I

    .line 152
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 153
    invoke-static {v7}, Lcom/shabakaty/downloader/su;->k(I)I

    move-result v7

    if-eq v7, v3, :cond_16

    goto :goto_d

    .line 154
    :cond_16
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 155
    :goto_d
    check-cast v2, Landroid/app/Activity;

    .line 156
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v6, -0x2

    .line 157
    :cond_17
    invoke-virtual {v2, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v5, v6}, Lcom/google/android/material/snackbar/Snackbar;->l(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v2

    .line 158
    iput-object v2, v0, Lcom/shabakaty/downloader/vb;->p:Lcom/google/android/material/snackbar/Snackbar;

    .line 159
    iget-object v0, v4, Lcom/shabakaty/downloader/ub;->a:Lcom/shabakaty/downloader/vb;

    .line 160
    iget-object v0, v0, Lcom/shabakaty/downloader/vb;->p:Lcom/google/android/material/snackbar/Snackbar;

    .line 161
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->p()V

    goto :goto_e

    .line 162
    :cond_18
    iget-object v0, v4, Lcom/shabakaty/downloader/ub;->a:Lcom/shabakaty/downloader/vb;

    .line 163
    iget-object v2, v0, Lcom/shabakaty/downloader/vb;->a:Landroid/content/Context;

    .line 164
    iget-object v3, v0, Lcom/shabakaty/downloader/vb;->m:Ljava/lang/String;

    .line 165
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/vb;->b(Lcom/shabakaty/downloader/vb;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 166
    new-instance v6, Landroidx/appcompat/app/b$a;

    invoke-direct {v6, v2}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    .line 167
    invoke-virtual {v6, v3}, Landroidx/appcompat/app/b$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    move-result-object v3

    .line 168
    invoke-virtual {v3, v5}, Landroidx/appcompat/app/b$a;->c(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    move-result-object v3

    .line 169
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x104000a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/shabakaty/downloader/fz4;

    invoke-direct {v5}, Lcom/shabakaty/downloader/fz4;-><init>()V

    invoke-virtual {v3, v2, v5}, Landroidx/appcompat/app/b$a;->f(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object v2

    .line 170
    invoke-virtual {v2}, Landroidx/appcompat/app/b$a;->create()Landroidx/appcompat/app/b;

    move-result-object v2

    .line 171
    iput-object v2, v0, Lcom/shabakaty/downloader/vb;->o:Landroidx/appcompat/app/b;

    .line 172
    iget-object v0, v4, Lcom/shabakaty/downloader/ub;->a:Lcom/shabakaty/downloader/vb;

    .line 173
    iget-object v2, v0, Lcom/shabakaty/downloader/vb;->o:Landroidx/appcompat/app/b;

    .line 174
    iget-object v0, v0, Lcom/shabakaty/downloader/vb;->q:Ljava/lang/Boolean;

    .line 175
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 176
    iget-object v0, v4, Lcom/shabakaty/downloader/ub;->a:Lcom/shabakaty/downloader/vb;

    .line 177
    iget-object v0, v0, Lcom/shabakaty/downloader/vb;->o:Landroidx/appcompat/app/b;

    .line 178
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_e

    .line 179
    :cond_19
    iget-object v0, v1, Lcom/shabakaty/downloader/ez4;->f:Lcom/shabakaty/downloader/vw1;

    check-cast v0, Lcom/shabakaty/downloader/ub;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ub;->a(I)V

    :cond_1a
    :goto_e
    return-void
.end method

.method public onPreExecute()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ez4;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/ez4;->f:Lcom/shabakaty/downloader/vw1;

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "connectivity"

    .line 5
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 8
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/ez4;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/shabakaty/downloader/ez4;->b:Lcom/shabakaty/downloader/ch2;

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/ch2;->a:Landroid/content/SharedPreferences;

    const-string v3, "prefAppUpdaterShow"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    invoke-virtual {p0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_4

    .line 13
    :cond_2
    iget v0, p0, Lcom/shabakaty/downloader/ez4;->d:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/ez4;->f:Lcom/shabakaty/downloader/vw1;

    check-cast v0, Lcom/shabakaty/downloader/ub;

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/ub;->a(I)V

    .line 15
    invoke-virtual {p0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_4

    :cond_3
    const/4 v3, 0x5

    if-ne v0, v3, :cond_5

    .line 16
    iget-object v0, p0, Lcom/shabakaty/downloader/ez4;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 17
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 18
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 19
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/ez4;->f:Lcom/shabakaty/downloader/vw1;

    const/4 v2, 0x4

    check-cast v0, Lcom/shabakaty/downloader/ub;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ub;->a(I)V

    .line 21
    invoke-virtual {p0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_4

    .line 22
    :cond_5
    iget v0, p0, Lcom/shabakaty/downloader/ez4;->d:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/shabakaty/downloader/ez4;->e:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 23
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 24
    :try_start_1
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 25
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    .line 26
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    .line 27
    :cond_6
    iget-object v0, p0, Lcom/shabakaty/downloader/ez4;->f:Lcom/shabakaty/downloader/vw1;

    check-cast v0, Lcom/shabakaty/downloader/ub;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ub;->a(I)V

    .line 28
    invoke-virtual {p0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_4

    .line 29
    :cond_7
    iget-object v0, p0, Lcom/shabakaty/downloader/ez4;->f:Lcom/shabakaty/downloader/vw1;

    const/4 v2, 0x3

    check-cast v0, Lcom/shabakaty/downloader/ub;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ub;->a(I)V

    .line 30
    invoke-virtual {p0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_4

    .line 31
    :cond_8
    :goto_3
    invoke-virtual {p0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_9
    :goto_4
    return-void
.end method
