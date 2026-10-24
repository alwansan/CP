.class public Lcom/shabakaty/downloader/b24;
.super Ljava/lang/Object;
.source "SessionReportingCoordinator.java"


# instance fields
.field public final a:Lcom/shabakaty/downloader/fg0;

.field public final b:Lcom/shabakaty/downloader/kg0;

.field public final c:Lcom/shabakaty/downloader/zl0;

.field public final d:Lcom/shabakaty/downloader/hk2;

.field public final e:Lcom/shabakaty/downloader/tk1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fg0;Lcom/shabakaty/downloader/kg0;Lcom/shabakaty/downloader/zl0;Lcom/shabakaty/downloader/hk2;Lcom/shabakaty/downloader/tk1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/b24;->a:Lcom/shabakaty/downloader/fg0;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/b24;->b:Lcom/shabakaty/downloader/kg0;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/b24;->c:Lcom/shabakaty/downloader/zl0;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/b24;->d:Lcom/shabakaty/downloader/hk2;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/b24;->e:Lcom/shabakaty/downloader/tk1;

    return-void
.end method

.method public static b(Landroid/app/ApplicationExitInfo;)Lcom/shabakaty/downloader/eg0$a;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTraceInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/b24;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    const-string v2, "Could not get input trace in application exit info: "

    .line 2
    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirebaseCrashlytics"

    .line 4
    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    :goto_1
    new-instance v1, Lcom/shabakaty/downloader/ig$b;

    invoke-direct {v1}, Lcom/shabakaty/downloader/ig$b;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getImportance()I

    move-result v2

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/shabakaty/downloader/ig$b;->d:Ljava/lang/Integer;

    .line 8
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getProcessName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Null processName"

    .line 9
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iput-object v2, v1, Lcom/shabakaty/downloader/ig$b;->b:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v2

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/shabakaty/downloader/ig$b;->c:Ljava/lang/Integer;

    .line 13
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v2

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/shabakaty/downloader/ig$b;->g:Ljava/lang/Long;

    .line 15
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v2

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/shabakaty/downloader/ig$b;->a:Ljava/lang/Integer;

    .line 17
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getPss()J

    move-result-wide v2

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/shabakaty/downloader/ig$b;->e:Ljava/lang/Long;

    .line 19
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getRss()J

    move-result-wide v2

    .line 20
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, v1, Lcom/shabakaty/downloader/ig$b;->f:Ljava/lang/Long;

    .line 21
    iput-object v0, v1, Lcom/shabakaty/downloader/ig$b;->h:Ljava/lang/String;

    .line 22
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ig$b;->a()Lcom/shabakaty/downloader/eg0$a;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 3
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/Reader;->read()I

    move-result p0

    const/4 v2, -0x1

    if-eq p0, v2, :cond_0

    int-to-char p0, p0

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public static d(Landroid/content/Context;Lcom/shabakaty/downloader/ux1;Lcom/shabakaty/downloader/sm6;Lcom/shabakaty/downloader/db;Lcom/shabakaty/downloader/hk2;Lcom/shabakaty/downloader/tk1;Lcom/shabakaty/downloader/eb4;Lcom/shabakaty/downloader/x24;)Lcom/shabakaty/downloader/b24;
    .locals 7

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    new-instance v1, Ljava/io/File;

    iget-object p2, p2, Lcom/shabakaty/downloader/sm6;->r:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    const-string v2, ".com.google.firebase.crashlytics"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/fg0;

    invoke-direct {v2, p0, p1, p3, p6}, Lcom/shabakaty/downloader/fg0;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/ux1;Lcom/shabakaty/downloader/db;Lcom/shabakaty/downloader/eb4;)V

    .line 5
    new-instance v3, Lcom/shabakaty/downloader/kg0;

    invoke-direct {v3, v0, p7}, Lcom/shabakaty/downloader/kg0;-><init>(Ljava/io/File;Lcom/shabakaty/downloader/x24;)V

    .line 6
    sget-object p1, Lcom/shabakaty/downloader/zl0;->b:Lcom/shabakaty/downloader/gg0;

    .line 7
    invoke-static {p0}, Lcom/shabakaty/downloader/yq4;->b(Landroid/content/Context;)V

    .line 8
    invoke-static {}, Lcom/shabakaty/downloader/yq4;->a()Lcom/shabakaty/downloader/yq4;

    move-result-object p0

    new-instance p1, Lcom/shabakaty/downloader/kp;

    sget-object p2, Lcom/shabakaty/downloader/zl0;->c:Ljava/lang/String;

    sget-object p3, Lcom/shabakaty/downloader/zl0;->d:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lcom/shabakaty/downloader/kp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/yq4;->c(Lcom/shabakaty/downloader/g31;)Lcom/shabakaty/downloader/pq4;

    move-result-object p0

    const-class p1, Lcom/shabakaty/downloader/eg0;

    .line 10
    new-instance p2, Lcom/shabakaty/downloader/o31;

    const-string p3, "json"

    invoke-direct {p2, p3}, Lcom/shabakaty/downloader/o31;-><init>(Ljava/lang/String;)V

    .line 11
    sget-object p3, Lcom/shabakaty/downloader/zl0;->e:Lcom/shabakaty/downloader/aq4;

    .line 12
    check-cast p0, Lcom/shabakaty/downloader/qq4;

    const-string p6, "FIREBASE_CRASHLYTICS_REPORT"

    invoke-virtual {p0, p6, p1, p2, p3}, Lcom/shabakaty/downloader/qq4;->a(Ljava/lang/String;Ljava/lang/Class;Lcom/shabakaty/downloader/o31;Lcom/shabakaty/downloader/aq4;)Lcom/shabakaty/downloader/mq4;

    move-result-object p0

    .line 13
    new-instance v4, Lcom/shabakaty/downloader/zl0;

    invoke-direct {v4, p0, p3}, Lcom/shabakaty/downloader/zl0;-><init>(Lcom/shabakaty/downloader/mq4;Lcom/shabakaty/downloader/aq4;)V

    .line 14
    new-instance p0, Lcom/shabakaty/downloader/b24;

    move-object v1, p0

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/b24;-><init>(Lcom/shabakaty/downloader/fg0;Lcom/shabakaty/downloader/kg0;Lcom/shabakaty/downloader/zl0;Lcom/shabakaty/downloader/hk2;Lcom/shabakaty/downloader/tk1;)V

    return-object p0
.end method

.method public static e(Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/eg0$c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Null key"

    .line 5
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "Null value"

    .line 7
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    new-instance v3, Lcom/shabakaty/downloader/jg;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v1, v4}, Lcom/shabakaty/downloader/jg;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/jg$a;)V

    .line 9
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    sget-object p0, Lcom/shabakaty/downloader/j83;->w:Lcom/shabakaty/downloader/j83;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/eg0$e$d;Lcom/shabakaty/downloader/hk2;Lcom/shabakaty/downloader/tk1;)Lcom/shabakaty/downloader/eg0$e$d;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e$d;->f()Lcom/shabakaty/downloader/eg0$e$d$b;

    move-result-object v0

    .line 2
    iget-object p2, p2, Lcom/shabakaty/downloader/hk2;->c:Lcom/shabakaty/downloader/xa1;

    invoke-interface {p2}, Lcom/shabakaty/downloader/xa1;->b()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/zg;

    invoke-direct {v2, p2, v1}, Lcom/shabakaty/downloader/zg;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/zg$a;)V

    .line 4
    move-object p2, v0

    check-cast p2, Lcom/shabakaty/downloader/qg$b;

    .line 5
    iput-object v2, p2, Lcom/shabakaty/downloader/qg$b;->e:Lcom/shabakaty/downloader/eg0$e$d$d;

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    const-string v2, "FirebaseCrashlytics"

    .line 6
    invoke-static {v2, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "No log data to include with this event."

    .line 7
    invoke-static {v2, p2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    :cond_1
    :goto_0
    iget-object p2, p3, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/xd2;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/xd2;->a()Ljava/util/Map;

    move-result-object p2

    .line 9
    invoke-static {p2}, Lcom/shabakaty/downloader/b24;->e(Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    .line 10
    iget-object p3, p3, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    check-cast p3, Lcom/shabakaty/downloader/xd2;

    invoke-virtual {p3}, Lcom/shabakaty/downloader/xd2;->a()Ljava/util/Map;

    move-result-object p3

    .line 11
    invoke-static {p3}, Lcom/shabakaty/downloader/b24;->e(Ljava/util/Map;)Ljava/util/List;

    move-result-object p3

    .line 12
    move-object v1, p2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e$d;->a()Lcom/shabakaty/downloader/eg0$e$d$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e$d$a;->f()Lcom/shabakaty/downloader/eg0$e$d$a$a;

    move-result-object p1

    .line 14
    new-instance v1, Lcom/shabakaty/downloader/zz1;

    invoke-direct {v1, p2}, Lcom/shabakaty/downloader/zz1;-><init>(Ljava/util/List;)V

    .line 15
    check-cast p1, Lcom/shabakaty/downloader/rg$b;

    .line 16
    iput-object v1, p1, Lcom/shabakaty/downloader/rg$b;->b:Lcom/shabakaty/downloader/zz1;

    .line 17
    new-instance p2, Lcom/shabakaty/downloader/zz1;

    invoke-direct {p2, p3}, Lcom/shabakaty/downloader/zz1;-><init>(Ljava/util/List;)V

    .line 18
    iput-object p2, p1, Lcom/shabakaty/downloader/rg$b;->c:Lcom/shabakaty/downloader/zz1;

    .line 19
    invoke-virtual {p1}, Lcom/shabakaty/downloader/rg$b;->a()Lcom/shabakaty/downloader/eg0$e$d$a;

    move-result-object p1

    .line 20
    move-object p2, v0

    check-cast p2, Lcom/shabakaty/downloader/qg$b;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iput-object p1, p2, Lcom/shabakaty/downloader/qg$b;->c:Lcom/shabakaty/downloader/eg0$e$d$a;

    .line 22
    :cond_2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/eg0$e$d$b;->a()Lcom/shabakaty/downloader/eg0$e$d;

    move-result-object p1

    return-object p1
.end method

.method public f()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/b24;->b:Lcom/shabakaty/downloader/kg0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/kg0;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/shabakaty/downloader/kg0;->b(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/kg0;->j:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public g(Ljava/lang/String;Landroid/app/ApplicationExitInfo;Lcom/shabakaty/downloader/hk2;Lcom/shabakaty/downloader/tk1;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/shabakaty/downloader/b24;->b:Lcom/shabakaty/downloader/kg0;

    .line 2
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/kg0;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 3
    new-instance v3, Ljava/io/File;

    const-string v4, "start-time"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object v2, v0, Lcom/shabakaty/downloader/b24;->a:Lcom/shabakaty/downloader/fg0;

    .line 8
    invoke-static/range {p2 .. p2}, Lcom/shabakaty/downloader/b24;->b(Landroid/app/ApplicationExitInfo;)Lcom/shabakaty/downloader/eg0$a;

    move-result-object v6

    .line 9
    iget-object v3, v2, Lcom/shabakaty/downloader/fg0;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v10, v3, Landroid/content/res/Configuration;->orientation:I

    .line 10
    new-instance v11, Lcom/shabakaty/downloader/qg$b;

    invoke-direct {v11}, Lcom/shabakaty/downloader/qg$b;-><init>()V

    const-string v3, "anr"

    .line 11
    invoke-virtual {v11, v3}, Lcom/shabakaty/downloader/qg$b;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/eg0$e$d$b;

    .line 12
    move-object v3, v6

    check-cast v3, Lcom/shabakaty/downloader/ig;

    .line 13
    iget-wide v4, v3, Lcom/shabakaty/downloader/ig;->g:J

    .line 14
    invoke-virtual {v11, v4, v5}, Lcom/shabakaty/downloader/qg$b;->b(J)Lcom/shabakaty/downloader/eg0$e$d$b;

    .line 15
    iget v3, v3, Lcom/shabakaty/downloader/ig;->d:I

    const/16 v4, 0x64

    const/4 v12, 0x1

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    const/16 v16, 0x0

    const/4 v15, 0x0

    .line 16
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 17
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 18
    invoke-virtual {v2}, Lcom/shabakaty/downloader/fg0;->e()Lcom/shabakaty/downloader/eg0$e$d$a$b$c;

    move-result-object v7

    .line 19
    invoke-virtual {v2}, Lcom/shabakaty/downloader/fg0;->a()Lcom/shabakaty/downloader/zz1;

    move-result-object v8

    .line 20
    new-instance v14, Lcom/shabakaty/downloader/sg;

    const/4 v9, 0x0

    move-object v3, v14

    invoke-direct/range {v3 .. v9}, Lcom/shabakaty/downloader/sg;-><init>(Lcom/shabakaty/downloader/zz1;Lcom/shabakaty/downloader/eg0$e$d$a$b$b;Lcom/shabakaty/downloader/eg0$a;Lcom/shabakaty/downloader/eg0$e$d$a$b$c;Lcom/shabakaty/downloader/zz1;Lcom/shabakaty/downloader/sg$a;)V

    if-nez v13, :cond_3

    const-string v3, " uiOrientation"

    goto :goto_1

    :cond_3
    const-string v3, ""

    .line 21
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 22
    new-instance v3, Lcom/shabakaty/downloader/rg;

    .line 23
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v19, 0x0

    move-object v13, v3

    invoke-direct/range {v13 .. v19}, Lcom/shabakaty/downloader/rg;-><init>(Lcom/shabakaty/downloader/eg0$e$d$a$b;Lcom/shabakaty/downloader/zz1;Lcom/shabakaty/downloader/zz1;Ljava/lang/Boolean;ILcom/shabakaty/downloader/rg$a;)V

    .line 24
    iput-object v3, v11, Lcom/shabakaty/downloader/qg$b;->c:Lcom/shabakaty/downloader/eg0$e$d$a;

    .line 25
    invoke-virtual {v2, v10}, Lcom/shabakaty/downloader/fg0;->b(I)Lcom/shabakaty/downloader/eg0$e$d$c;

    move-result-object v2

    .line 26
    iput-object v2, v11, Lcom/shabakaty/downloader/qg$b;->d:Lcom/shabakaty/downloader/eg0$e$d$c;

    .line 27
    invoke-virtual {v11}, Lcom/shabakaty/downloader/qg$b;->a()Lcom/shabakaty/downloader/eg0$e$d;

    move-result-object v2

    const-string v3, "Persisting anr for session "

    .line 28
    invoke-static {v3, v1}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const-string v5, "FirebaseCrashlytics"

    .line 29
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    .line 30
    invoke-static {v5, v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    :cond_4
    iget-object v3, v0, Lcom/shabakaty/downloader/b24;->b:Lcom/shabakaty/downloader/kg0;

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 32
    invoke-virtual {v0, v2, v4, v5}, Lcom/shabakaty/downloader/b24;->a(Lcom/shabakaty/downloader/eg0$e$d;Lcom/shabakaty/downloader/hk2;Lcom/shabakaty/downloader/tk1;)Lcom/shabakaty/downloader/eg0$e$d;

    move-result-object v2

    .line 33
    invoke-virtual {v3, v2, v1, v12}, Lcom/shabakaty/downloader/kg0;->g(Lcom/shabakaty/downloader/eg0$e$d;Ljava/lang/String;Z)V

    return-void

    .line 34
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final h(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v4, p4

    const-string v2, "crash"

    .line 1
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 2
    iget-object v2, v0, Lcom/shabakaty/downloader/b24;->a:Lcom/shabakaty/downloader/fg0;

    .line 3
    iget-object v3, v2, Lcom/shabakaty/downloader/fg0;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 4
    new-instance v5, Lcom/shabakaty/downloader/np4;

    iget-object v6, v2, Lcom/shabakaty/downloader/fg0;->d:Lcom/shabakaty/downloader/eb4;

    move-object/from16 v7, p1

    invoke-direct {v5, v7, v6}, Lcom/shabakaty/downloader/np4;-><init>(Ljava/lang/Throwable;Lcom/shabakaty/downloader/eb4;)V

    const-string v6, "Null type"

    .line 5
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 7
    iget-object v7, v2, Lcom/shabakaty/downloader/fg0;->c:Lcom/shabakaty/downloader/db;

    iget-object v7, v7, Lcom/shabakaty/downloader/db;->d:Ljava/lang/String;

    iget-object v8, v2, Lcom/shabakaty/downloader/fg0;->a:Landroid/content/Context;

    const-string v10, "activity"

    .line 8
    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    .line 9
    invoke-virtual {v8}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x0

    if-eqz v8, :cond_1

    .line 10
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 11
    iget-object v12, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_0

    :cond_1
    move-object v11, v10

    :goto_0
    const/4 v7, 0x0

    if-eqz v11, :cond_3

    .line 12
    iget v8, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v10, 0x64

    if-eq v8, v10, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 13
    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    :cond_3
    move-object v15, v10

    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v19, 0x0

    .line 15
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iget-object v11, v5, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    check-cast v11, [Ljava/lang/StackTraceElement;

    const/4 v12, 0x4

    .line 17
    invoke-virtual {v2, v1, v11, v12}, Lcom/shabakaty/downloader/fg0;->f(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;I)Lcom/shabakaty/downloader/eg0$e$d$a$b$d;

    move-result-object v11

    .line 18
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p7, :cond_5

    .line 19
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v11

    .line 20
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Thread;

    .line 22
    invoke-virtual {v13, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 23
    iget-object v14, v2, Lcom/shabakaty/downloader/fg0;->d:Lcom/shabakaty/downloader/eb4;

    .line 24
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/StackTraceElement;

    invoke-interface {v14, v12}, Lcom/shabakaty/downloader/eb4;->a([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v12

    .line 25
    invoke-virtual {v2, v13, v12, v7}, Lcom/shabakaty/downloader/fg0;->f(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;I)Lcom/shabakaty/downloader/eg0$e$d$a$b$d;

    move-result-object v12

    .line 26
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 27
    :cond_5
    new-instance v1, Lcom/shabakaty/downloader/zz1;

    invoke-direct {v1, v10}, Lcom/shabakaty/downloader/zz1;-><init>(Ljava/util/List;)V

    const/16 v10, 0x8

    const/4 v11, 0x4

    .line 28
    invoke-virtual {v2, v5, v11, v10, v7}, Lcom/shabakaty/downloader/fg0;->c(Lcom/shabakaty/downloader/np4;III)Lcom/shabakaty/downloader/eg0$e$d$a$b$b;

    move-result-object v18

    .line 29
    invoke-virtual {v2}, Lcom/shabakaty/downloader/fg0;->e()Lcom/shabakaty/downloader/eg0$e$d$a$b$c;

    move-result-object v20

    .line 30
    invoke-virtual {v2}, Lcom/shabakaty/downloader/fg0;->a()Lcom/shabakaty/downloader/zz1;

    move-result-object v21

    .line 31
    new-instance v12, Lcom/shabakaty/downloader/sg;

    const/16 v22, 0x0

    move-object/from16 v16, v12

    move-object/from16 v17, v1

    invoke-direct/range {v16 .. v22}, Lcom/shabakaty/downloader/sg;-><init>(Lcom/shabakaty/downloader/zz1;Lcom/shabakaty/downloader/eg0$e$d$a$b$b;Lcom/shabakaty/downloader/eg0$a;Lcom/shabakaty/downloader/eg0$e$d$a$b$c;Lcom/shabakaty/downloader/zz1;Lcom/shabakaty/downloader/sg$a;)V

    const-string v1, ""

    if-nez v8, :cond_6

    const-string v5, " uiOrientation"

    goto :goto_3

    :cond_6
    move-object v5, v1

    .line 32
    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    const-string v10, "Missing required properties:"

    if-eqz v7, :cond_9

    .line 33
    new-instance v5, Lcom/shabakaty/downloader/rg;

    .line 34
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    move-object v11, v5

    invoke-direct/range {v11 .. v17}, Lcom/shabakaty/downloader/rg;-><init>(Lcom/shabakaty/downloader/eg0$e$d$a$b;Lcom/shabakaty/downloader/zz1;Lcom/shabakaty/downloader/zz1;Ljava/lang/Boolean;ILcom/shabakaty/downloader/rg$a;)V

    .line 35
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/fg0;->b(I)Lcom/shabakaty/downloader/eg0$e$d$c;

    move-result-object v7

    if-nez v6, :cond_7

    const-string v1, " timestamp"

    .line 36
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 37
    new-instance v10, Lcom/shabakaty/downloader/qg;

    .line 38
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v1, v10

    move-object/from16 v4, p4

    move-object v6, v7

    move-object v7, v11

    invoke-direct/range {v1 .. v8}, Lcom/shabakaty/downloader/qg;-><init>(JLjava/lang/String;Lcom/shabakaty/downloader/eg0$e$d$a;Lcom/shabakaty/downloader/eg0$e$d$c;Lcom/shabakaty/downloader/eg0$e$d$d;Lcom/shabakaty/downloader/qg$a;)V

    .line 39
    iget-object v1, v0, Lcom/shabakaty/downloader/b24;->b:Lcom/shabakaty/downloader/kg0;

    .line 40
    iget-object v2, v0, Lcom/shabakaty/downloader/b24;->d:Lcom/shabakaty/downloader/hk2;

    iget-object v3, v0, Lcom/shabakaty/downloader/b24;->e:Lcom/shabakaty/downloader/tk1;

    invoke-virtual {v0, v10, v2, v3}, Lcom/shabakaty/downloader/b24;->a(Lcom/shabakaty/downloader/eg0$e$d;Lcom/shabakaty/downloader/hk2;Lcom/shabakaty/downloader/tk1;)Lcom/shabakaty/downloader/eg0$e$d;

    move-result-object v2

    move-object/from16 v3, p3

    .line 41
    invoke-virtual {v1, v2, v3, v9}, Lcom/shabakaty/downloader/kg0;->g(Lcom/shabakaty/downloader/eg0$e$d;Ljava/lang/String;Z)V

    return-void

    .line 42
    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-static {v10, v1}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 43
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v10, v5}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public i(Ljava/util/concurrent/Executor;)Lcom/shabakaty/downloader/uk4;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/shabakaty/downloader/uk4<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/b24;->b:Lcom/shabakaty/downloader/kg0;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/kg0;->c()Ljava/util/List;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/kg0;->c()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 6
    :try_start_0
    sget-object v3, Lcom/shabakaty/downloader/kg0;->i:Lcom/shabakaty/downloader/gg0;

    invoke-static {v1}, Lcom/shabakaty/downloader/kg0;->i(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/gg0;->g(Ljava/lang/String;)Lcom/shabakaty/downloader/eg0;

    move-result-object v3

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 8
    new-instance v5, Lcom/shabakaty/downloader/hg;

    invoke-direct {v5, v3, v4}, Lcom/shabakaty/downloader/hg;-><init>(Lcom/shabakaty/downloader/eg0;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not load report file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; deleting"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FirebaseCrashlytics"

    .line 11
    invoke-static {v5, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/lg0;

    .line 15
    iget-object v3, p0, Lcom/shabakaty/downloader/b24;->c:Lcom/shabakaty/downloader/zl0;

    .line 16
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v2}, Lcom/shabakaty/downloader/lg0;->a()Lcom/shabakaty/downloader/eg0;

    move-result-object v4

    .line 18
    new-instance v5, Lcom/shabakaty/downloader/zk4;

    invoke-direct {v5}, Lcom/shabakaty/downloader/zk4;-><init>()V

    .line 19
    iget-object v3, v3, Lcom/shabakaty/downloader/zl0;->a:Lcom/shabakaty/downloader/mq4;

    .line 20
    invoke-static {v4}, Lcom/shabakaty/downloader/i51;->f(Ljava/lang/Object;)Lcom/shabakaty/downloader/i51;

    move-result-object v4

    new-instance v6, Lcom/shabakaty/downloader/rv;

    invoke-direct {v6, v5, v2}, Lcom/shabakaty/downloader/rv;-><init>(Lcom/shabakaty/downloader/zk4;Lcom/shabakaty/downloader/lg0;)V

    .line 21
    invoke-interface {v3, v4, v6}, Lcom/shabakaty/downloader/mq4;->b(Lcom/shabakaty/downloader/i51;Lcom/shabakaty/downloader/br4;)V

    .line 22
    iget-object v2, v5, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    .line 23
    new-instance v3, Lcom/shabakaty/downloader/cu;

    invoke-direct {v3, p0}, Lcom/shabakaty/downloader/cu;-><init>(Lcom/shabakaty/downloader/b24;)V

    .line 24
    invoke-virtual {v2, p1, v3}, Lcom/shabakaty/downloader/ye7;->e(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/td0;)Lcom/shabakaty/downloader/uk4;

    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 26
    :cond_1
    invoke-static {v0}, Lcom/shabakaty/downloader/kl4;->f(Ljava/util/Collection;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    return-object p1
.end method
