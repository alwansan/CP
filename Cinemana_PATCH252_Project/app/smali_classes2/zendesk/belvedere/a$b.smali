.class public Lzendesk/belvedere/a$b;
.super Ljava/lang/Object;
.source "BelvedereUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/belvedere/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/cp2;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/tp2;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/tp2;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public f:J

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lzendesk/belvedere/a$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lzendesk/belvedere/a$b;->b:Ljava/util/List;

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lzendesk/belvedere/a$b;->c:Ljava/util/List;

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lzendesk/belvedere/a$b;->d:Ljava/util/List;

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lzendesk/belvedere/a$b;->e:Ljava/util/List;

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lzendesk/belvedere/a$b;->f:J

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p0, Lzendesk/belvedere/a$b;->g:Z

    .line 8
    iput-object p1, p0, Lzendesk/belvedere/a$b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/r9;)V
    .locals 10

    .line 1
    invoke-static {p1}, Lzendesk/belvedere/a;->a(Lcom/shabakaty/downloader/r9;)Lzendesk/belvedere/c;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lzendesk/belvedere/a$b;->b:Ljava/util/List;

    new-instance v1, Lzendesk/belvedere/a$b$a;

    invoke-direct {v1, p0, p1}, Lzendesk/belvedere/a$b$a;-><init>(Lzendesk/belvedere/a$b;Lzendesk/belvedere/c;)V

    .line 3
    iget-object v2, p1, Lzendesk/belvedere/c;->x:Lzendesk/belvedere/p;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {v2, v3}, Lzendesk/belvedere/p;->a(Landroid/content/Context;)Z

    move-result v6

    .line 8
    iget-object v7, v2, Lzendesk/belvedere/p;->a:Lcom/shabakaty/downloader/xb3;

    .line 9
    iget-object v7, v7, Lcom/shabakaty/downloader/xb3;->a:Landroid/content/SharedPreferences;

    const-string v8, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-nez v6, :cond_0

    if-eqz v7, :cond_0

    .line 10
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_0
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 12
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/cp2;

    .line 14
    iget-object v8, v7, Lcom/shabakaty/downloader/cp2;->u:Ljava/lang/String;

    .line 15
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v2, Lzendesk/belvedere/p;->a:Lcom/shabakaty/downloader/xb3;

    .line 16
    iget-object v9, v7, Lcom/shabakaty/downloader/cp2;->u:Ljava/lang/String;

    .line 17
    iget-object v8, v8, Lcom/shabakaty/downloader/xb3;->a:Landroid/content/SharedPreferences;

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 18
    iget-boolean v8, v7, Lcom/shabakaty/downloader/cp2;->r:Z

    if-eqz v8, :cond_1

    .line 19
    iget-object v7, v7, Lcom/shabakaty/downloader/cp2;->u:Ljava/lang/String;

    .line 20
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 22
    invoke-virtual {v2, v3}, Lzendesk/belvedere/p;->a(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 23
    invoke-virtual {v2, v3, v0}, Lzendesk/belvedere/p;->b(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lzendesk/belvedere/a$b$a;->a(Ljava/util/List;)V

    goto :goto_1

    .line 24
    :cond_3
    invoke-virtual {v2, v3}, Lzendesk/belvedere/p;->a(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 25
    iget-object p1, v1, Lzendesk/belvedere/a$b$a;->a:Lzendesk/belvedere/c;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object p1

    if-eqz p1, :cond_5

    const v0, 0x7f120042

    const/4 v1, 0x0

    .line 26
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 27
    :cond_4
    new-instance v5, Lzendesk/belvedere/n;

    invoke-direct {v5, v2, v3, v0, v1}, Lzendesk/belvedere/n;-><init>(Lzendesk/belvedere/p;Landroid/content/Context;Ljava/util/List;Lzendesk/belvedere/p$b;)V

    .line 28
    new-instance v0, Lzendesk/belvedere/o;

    invoke-direct {v0, v2, v5}, Lzendesk/belvedere/o;-><init>(Lzendesk/belvedere/p;Lzendesk/belvedere/p$a;)V

    .line 29
    iput-object v0, v2, Lzendesk/belvedere/p;->b:Lzendesk/belvedere/p$a;

    .line 30
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x2672

    .line 31
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public b()Lzendesk/belvedere/a$b;
    .locals 29

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lzendesk/belvedere/a$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/shabakaty/downloader/ul;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/ul;

    move-result-object v0

    .line 2
    iget-object v2, v0, Lcom/shabakaty/downloader/ul;->c:Lcom/shabakaty/downloader/rn4;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/rn4;->b()I

    move-result v2

    .line 3
    iget-object v3, v0, Lcom/shabakaty/downloader/ul;->d:Lcom/shabakaty/downloader/vq2;

    iget-object v9, v0, Lcom/shabakaty/downloader/ul;->c:Lcom/shabakaty/downloader/rn4;

    .line 4
    iget-object v0, v3, Lcom/shabakaty/downloader/vq2;->c:Landroid/content/Context;

    .line 5
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.media.action.IMAGE_CAPTURE"

    .line 6
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.camera"

    .line 8
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v10, 0x1

    if-nez v7, :cond_1

    const-string v7, "android.hardware.camera.front"

    .line 9
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v6, 0x1

    .line 10
    :goto_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 11
    :goto_2
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x2

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v10

    const-string v12, "Camera present: %b, Camera App present: %b"

    invoke-static {v4, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Belvedere"

    invoke-static {v12, v11}, Lcom/shabakaty/downloader/ye2;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_3

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_c

    .line 12
    iget-object v0, v3, Lcom/shabakaty/downloader/vq2;->c:Landroid/content/Context;

    const-string v11, "android.permission.CAMERA"

    .line 13
    iget-object v13, v3, Lcom/shabakaty/downloader/vq2;->a:Lcom/shabakaty/downloader/kd4;

    const-string v14, "media"

    .line 14
    invoke-virtual {v13, v0, v14}, Lcom/shabakaty/downloader/kd4;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    if-nez v14, :cond_4

    const-string v13, "Error creating cache directory"

    .line 15
    invoke-static {v12, v13}, Lcom/shabakaty/downloader/ye2;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v11

    const/4 v6, 0x0

    goto :goto_4

    .line 16
    :cond_4
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMddHHmmssSSS"

    invoke-direct {v15, v6, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-array v6, v10, [Ljava/lang/Object;

    .line 17
    new-instance v7, Ljava/util/Date;

    move-object/from16 v16, v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v15, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const-string v7, "camera_image_%s"

    invoke-static {v4, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ".jpg"

    .line 18
    invoke-virtual {v13, v14, v6, v7}, Lcom/shabakaty/downloader/kd4;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    :goto_4
    if-nez v6, :cond_5

    const-string v0, "Camera Intent: Image path is null. There\'s something wrong with the storage."

    .line 19
    invoke-static {v12, v0}, Lcom/shabakaty/downloader/ye2;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 20
    :cond_5
    iget-object v7, v3, Lcom/shabakaty/downloader/vq2;->a:Lcom/shabakaty/downloader/kd4;

    invoke-virtual {v7, v0, v6}, Lcom/shabakaty/downloader/kd4;->d(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    if-nez v7, :cond_6

    const-string v0, "Camera Intent: Uri to file is null. There\'s something wrong with the storage or FileProvider configuration."

    .line 21
    invoke-static {v12, v0}, Lcom/shabakaty/downloader/ye2;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const/4 v6, 0x0

    goto/16 :goto_a

    :cond_6
    const/4 v10, 0x3

    new-array v11, v10, [Ljava/lang/Object;

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v8

    const/4 v13, 0x1

    aput-object v6, v11, v13

    const/4 v14, 0x2

    aput-object v7, v11, v14

    const-string v14, "Camera Intent: Request Id: %s - File: %s - Uri: %s"

    invoke-static {v4, v14, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/shabakaty/downloader/ye2;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "output"

    .line 24
    invoke-virtual {v11, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 25
    iget-object v3, v3, Lcom/shabakaty/downloader/vq2;->a:Lcom/shabakaty/downloader/kd4;

    invoke-virtual {v3, v0, v11, v7, v10}, Lcom/shabakaty/downloader/kd4;->f(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;I)V

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 27
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x1000

    .line 28
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 29
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 30
    array-length v4, v3

    if-lez v4, :cond_8

    .line 31
    array-length v4, v3

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v4, :cond_8

    aget-object v10, v3, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v12, v16

    .line 32
    :try_start_1
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v10, :cond_7

    const/4 v3, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v16, v12

    goto :goto_6

    :catch_0
    :cond_8
    move-object/from16 v12, v16

    :catch_1
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_a

    .line 33
    invoke-static {v0, v12}, Lcom/shabakaty/downloader/ld0;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_9

    const/4 v3, 0x1

    goto :goto_8

    :cond_9
    const/4 v3, 0x0

    :goto_8
    if-nez v3, :cond_a

    const/4 v8, 0x1

    .line 34
    :cond_a
    invoke-static {v0, v7}, Lcom/shabakaty/downloader/kd4;->e(Landroid/content/Context;Landroid/net/Uri;)Lcom/shabakaty/downloader/tp2;

    move-result-object v0

    .line 35
    new-instance v10, Lcom/shabakaty/downloader/tp2;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    .line 36
    iget-object v3, v0, Lcom/shabakaty/downloader/tp2;->v:Ljava/lang/String;

    .line 37
    iget-wide v4, v0, Lcom/shabakaty/downloader/tp2;->w:J

    .line 38
    iget-wide v13, v0, Lcom/shabakaty/downloader/tp2;->x:J

    .line 39
    iget-wide v0, v0, Lcom/shabakaty/downloader/tp2;->y:J

    move-object/from16 v17, v10

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v7

    move-object/from16 v22, v3

    move-wide/from16 v23, v4

    move-wide/from16 v25, v13

    move-wide/from16 v27, v0

    .line 40
    invoke-direct/range {v17 .. v28}, Lcom/shabakaty/downloader/tp2;-><init>(Ljava/io/File;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJJ)V

    .line 41
    new-instance v0, Lcom/shabakaty/downloader/cp2;

    if-eqz v8, :cond_b

    move-object v6, v12

    goto :goto_9

    :cond_b
    const/4 v6, 0x0

    :goto_9
    const/4 v7, 0x1

    const/4 v8, 0x2

    move-object v3, v0

    move v4, v2

    move-object v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/downloader/cp2;-><init>(ILandroid/content/Intent;Ljava/lang/String;ZI)V

    .line 42
    new-instance v6, Lcom/shabakaty/downloader/y93;

    invoke-direct {v6, v0, v10}, Lcom/shabakaty/downloader/y93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    .line 43
    :cond_c
    new-instance v0, Lcom/shabakaty/downloader/y93;

    .line 44
    new-instance v1, Lcom/shabakaty/downloader/cp2;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/downloader/cp2;-><init>(ILandroid/content/Intent;Ljava/lang/String;ZI)V

    const/4 v3, 0x0

    .line 45
    invoke-direct {v0, v1, v3}, Lcom/shabakaty/downloader/y93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v6, v0

    .line 46
    :goto_a
    iget-object v0, v6, Lcom/shabakaty/downloader/y93;->a:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/cp2;

    .line 47
    iget-object v1, v6, Lcom/shabakaty/downloader/y93;->b:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/tp2;

    .line 48
    iget-boolean v3, v0, Lcom/shabakaty/downloader/cp2;->r:Z

    if-eqz v3, :cond_d

    .line 49
    monitor-enter v9

    .line 50
    :try_start_2
    iget-object v3, v9, Lcom/shabakaty/downloader/rn4;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    monitor-exit v9

    goto :goto_b

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_d
    :goto_b
    move-object/from16 v1, p0

    .line 52
    iget-object v2, v1, Lzendesk/belvedere/a$b;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public c(Ljava/lang/String;Z)Lzendesk/belvedere/a$b;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lzendesk/belvedere/a$b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/shabakaty/downloader/ul;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/ul;

    move-result-object v1

    .line 2
    iget-object v2, v1, Lcom/shabakaty/downloader/ul;->c:Lcom/shabakaty/downloader/rn4;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/rn4;->b()I

    move-result v4

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/ul;->d:Lcom/shabakaty/downloader/vq2;

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v3, v1, Lcom/shabakaty/downloader/vq2;->c:Landroid/content/Context;

    .line 7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "*/*"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v5}, Lcom/shabakaty/downloader/vq2;->a(Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;

    move-result-object v5

    .line 8
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v7, 0x1

    :cond_0
    if-eqz v7, :cond_1

    .line 9
    new-instance v9, Lcom/shabakaty/downloader/cp2;

    move-object/from16 v3, p1

    move/from16 v5, p2

    .line 10
    invoke-virtual {v1, v3, v5, v2}, Lcom/shabakaty/downloader/vq2;->a(Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/downloader/cp2;-><init>(ILandroid/content/Intent;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 11
    :cond_1
    new-instance v9, Lcom/shabakaty/downloader/cp2;

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    move-object v10, v9

    invoke-direct/range {v10 .. v15}, Lcom/shabakaty/downloader/cp2;-><init>(ILandroid/content/Intent;Ljava/lang/String;ZI)V

    .line 12
    :goto_0
    iget-object v1, v0, Lzendesk/belvedere/a$b;->b:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public varargs d([I)Lzendesk/belvedere/a$b;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iput-object v0, p0, Lzendesk/belvedere/a$b;->e:Ljava/util/List;

    return-object p0
.end method
