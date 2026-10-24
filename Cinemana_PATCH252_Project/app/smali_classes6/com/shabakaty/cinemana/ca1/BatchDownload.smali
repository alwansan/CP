.class public final Lcom/shabakaty/cinemana/ca1/BatchDownload;
.super Ljava/lang/Object;
.source "BatchDownload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/ca1/BatchDownload$Ui;,
        Lcom/shabakaty/cinemana/ca1/BatchDownload$Callback;,
        Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;,
        Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;,
        Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;,
        Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;,
        Lcom/shabakaty/cinemana/ca1/BatchDownload$Cached;
    }
.end annotation


# static fields
.field static final ADMITTED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/cinemana/ca1/BatchDownload$Cached;",
            ">;"
        }
    .end annotation
.end field

.field static final D:Ljava/lang/String; = "com.shabakaty.downloader."

.field static final M:Ljava/lang/String; = "com.shabakaty.cinemana.domain.models.local."

.field static active:Landroid/app/Dialog;

.field static volatile activeScreen:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/ca1/BatchDownload;->ADMITTED:Ljava/util/Set;

    .line 29
    new-instance v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$1;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/16 v3, 0x100

    invoke-direct {v0, v3, v1, v2}, Lcom/shabakaty/cinemana/ca1/BatchDownload$1;-><init>(IFZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/ca1/BatchDownload;->CACHE:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static await(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    const-string v0, "h"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string v3, "com.shabakaty.downloader.ay3"

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "b"

    invoke-static {v3, v4}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v3, "m"

    invoke-static {p0, v3, v4}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 68
    :cond_0
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 69
    new-array v4, v1, [Ljava/lang/Object;

    new-array v5, v1, [Ljava/lang/Throwable;

    .line 70
    new-instance v6, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4, p1, v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda0;-><init>([Ljava/lang/Object;ZLjava/util/concurrent/CountDownLatch;)V

    const-string v7, "com.shabakaty.downloader.xc0"

    invoke-static {v7, v6}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->proxy(Ljava/lang/String;Lcom/shabakaty/cinemana/ca1/BatchDownload$Callback;)Ljava/lang/Object;

    move-result-object v6

    .line 71
    new-instance v8, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda1;

    invoke-direct {v8, v5, v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda1;-><init>([Ljava/lang/Throwable;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v7, v8}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->proxy(Ljava/lang/String;Lcom/shabakaty/cinemana/ca1/BatchDownload$Callback;)Ljava/lang/Object;

    move-result-object v8

    .line 72
    const/4 v9, 0x2

    if-eqz p1, :cond_1

    new-instance p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda2;

    invoke-direct {p1, v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    const-string v10, "com.shabakaty.downloader.j2"

    invoke-static {v10, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->proxy(Ljava/lang/String;Lcom/shabakaty/cinemana/ca1/BatchDownload$Callback;)Ljava/lang/Object;

    move-result-object p1

    new-instance v10, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda3;

    invoke-direct {v10}, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v7, v10}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->proxy(Ljava/lang/String;Lcom/shabakaty/cinemana/ca1/BatchDownload$Callback;)Ljava/lang/Object;

    move-result-object v7

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v2

    aput-object v8, v10, v1

    aput-object p1, v10, v9

    const/4 p1, 0x3

    aput-object v7, v10, p1

    const-string p1, "g"

    invoke-static {p0, p1, v10}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-array p1, v9, [Ljava/lang/Object;

    aput-object v6, p1, v2

    aput-object v8, p1, v1

    const-string v1, "k"

    invoke-static {p0, v1, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 74
    :goto_0
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x23

    invoke-virtual {v3, v6, v7, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 75
    aget-object p1, v5, v2

    if-nez p1, :cond_3

    .line 76
    aget-object p1, v4, v2

    if-eqz p1, :cond_2

    .line 77
    aget-object p1, v4, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :try_start_1
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 77
    :goto_1
    return-object p1

    .line 76
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/Exception;

    const-string v1, "\u0644\u0645 \u062a\u0635\u0644 \u0628\u064a\u0627\u0646\u0627\u062a \u0645\u0646 \u0627\u0644\u062e\u0627\u062f\u0645"

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    aget-object v1, v5, v2

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 74
    :cond_4
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string v1, "\u0627\u0646\u062a\u0647\u062a \u0645\u0647\u0644\u0629 \u0642\u0631\u0627\u0621\u0629 \u0627\u0644\u0628\u064a\u0627\u0646\u0627\u062a"

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :catchall_0
    move-exception p1

    :try_start_3
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_2
    throw p1
.end method

.method static bytes(J)Ljava/lang/String;
    .locals 6

    .line 126
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const-string p0, "\u063a\u064a\u0631 \u0645\u0639\u0631\u0648\u0641"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x400

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " B"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    long-to-double p0, p0

    const-string v0, "GiB"

    const-string v1, "TiB"

    const-string v2, "B"

    const-string v3, "KiB"

    const-string v4, "MiB"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    cmpl-double v5, p0, v3

    if-ltz v5, :cond_2

    const/4 v5, 0x4

    if-ge v2, v5, :cond_2

    div-double/2addr p0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aget-object p1, v0, v2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p0, "%.2f %s"

    invoke-static {v3, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static varargs call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 51
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6, p2}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->fits([Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 p1, 0x1

    invoke-virtual {v5, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    :cond_1
    invoke-virtual {v5, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 52
    :cond_3
    new-instance p0, Ljava/lang/NoSuchMethodException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static choose(Ljava/util/List;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;",
            ">;I)I"
        }
    .end annotation

    .line 122
    nop

    .line 123
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;

    iget v3, v3, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->height:I

    if-gtz v3, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    if-ltz v1, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;

    iget v4, v4, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->height:I

    if-ge v3, v4, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    if-gt v3, p1, :cond_0

    if-ltz v0, :cond_4

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;

    iget v4, v4, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;->height:I

    if-le v3, v4, :cond_0

    :cond_4
    move v0, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    :cond_5
    if-ltz v0, :cond_6

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_2
    return v0
.end method

.method static episodeList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 112
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;

    invoke-direct {v2}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;-><init>()V

    iput-object v1, v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->brief:Ljava/lang/Object;

    const-string v3, "nb"

    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    const-string v3, "season"

    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->season:Ljava/lang/String;

    const-string v3, "episodeNummer"

    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->number:Ljava/lang/String;

    const-string v3, "arTitle"

    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->title:Ljava/lang/String;

    iget-object v3, v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "enTitle"

    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->title:Ljava/lang/String;

    :cond_1
    iget-object v1, v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0627\u0644\u062d\u0644\u0642\u0629 "

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->number:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->title:Ljava/lang/String;

    :cond_2
    iget-object v1, v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 113
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p0
.end method

.method static existing(Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v2, v1, [Ljava/lang/Object;

    .line 82
    const-string v3, "com.shabakaty.downloader.ud0"

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    new-instance v3, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda8;

    invoke-direct {v3, v2, v0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda8;-><init>([Ljava/lang/Object;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v4, v5, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    .line 87
    const-string v4, "com.shabakaty.downloader.vy0"

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "b"

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v7}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v6

    aput-object v3, v5, v1

    const-string p0, "e"

    invoke-static {v4, p0, v5}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 88
    const-string v3, "com.shabakaty.downloader.te0"

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne p0, v3, :cond_1

    const-wide/16 v3, 0xf

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-eqz p0, :cond_0

    aget-object p0, v2, v6

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string v0, "\u062a\u0639\u0630\u0631 \u0627\u0644\u062a\u062d\u0642\u0642 \u0645\u0646 \u0627\u0644\u062a\u0646\u0632\u064a\u0644\u0627\u062a"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 89
    :cond_1
    :goto_0
    const-string v0, "com.shabakaty.downloader.j96"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p0, v2, v6

    const-string v3, "i"

    invoke-static {v0, v3, v2}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method static field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static fits([Ljava/lang/Class;[Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 45
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 46
    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_4

    aget-object v1, p1, v0

    if-eqz v1, :cond_3

    aget-object v1, p0, v0

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    aget-object v1, p0, v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_1

    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-nez v1, :cond_3

    :cond_1
    aget-object v1, p0, v0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_2

    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Boolean;

    if-nez v1, :cond_3

    :cond_2
    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static guardToast(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 3

    .line 34
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/BatchLog;->init(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-static {p1, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "downloadTaskId"

    invoke-static {p1, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "path"

    invoke-static {p1, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " message="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "guard"

    const-string v2, "guard_block"

    invoke-static {v1, v2, p1, v0}, Lcom/shabakaty/cinemana/ca1/BatchLog;->event(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0, p2}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->toastSafe(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static height(Ljava/lang/String;)I
    .locals 2

    .line 117
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "4k"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x870

    return p0

    :cond_0
    const-string v0, "8k"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x10e0

    return p0

    .line 118
    :cond_1
    const-string v0, "(\\d+)\\s*[x\u00d7]\\s*(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 119
    :cond_2
    const-string v0, "(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static install(Ljava/lang/Object;Landroid/view/View;)V
    .locals 2

    .line 98
    :try_start_0
    const-string v0, "ca1_batch_download"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 99
    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/BatchLog;->init(Landroid/content/Context;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a0588

    invoke-virtual {p1, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->visibility(Ljava/lang/Object;Landroid/view/View;Landroid/view/View;I)V

    .line 101
    new-instance p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "CA1_BATCH"

    const-string v0, "install"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    :goto_0
    return-void
.end method

.method static synthetic lambda$await$2([Ljava/lang/Object;ZLjava/util/concurrent/CountDownLatch;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    const/4 v0, 0x0

    aput-object p3, p0, v0

    if-nez p1, :cond_0

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$await$3([Ljava/lang/Throwable;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    const/4 v0, 0x0

    check-cast p2, Ljava/lang/Throwable;

    aput-object p2, p0, v0

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method static synthetic lambda$await$4(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method static synthetic lambda$await$5(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    return-void
.end method

.method static synthetic lambda$episodeList$8(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)I
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->season:Ljava/lang/String;

    iget-object v1, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->season:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->order(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->number:Ljava/lang/String;

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->number:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->order(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method static synthetic lambda$existing$6([Ljava/lang/Object;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 83
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "com.shabakaty.downloader.s21"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string p1, "r"

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 84
    :cond_0
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "i"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    aget-object p2, p4, v2

    aput-object p2, p0, v2

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-object v1

    .line 85
    :cond_1
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "hashCode"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "equals"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    aget-object p0, p4, v2

    if-ne p2, p0, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p0, "CA1 continuation"

    return-object p0
.end method

.method static synthetic lambda$install$7(Ljava/lang/Object;Landroid/view/View;)V
    .locals 9

    .line 102
    :try_start_0
    sget-object v0, Lcom/shabakaty/cinemana/ca1/BatchDownload;->active:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shabakaty/cinemana/ca1/BatchDownload;->active:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 103
    :cond_0
    const-string v0, "c2"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v0, "v"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 104
    invoke-static {v7}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->series(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "\u0627\u0644\u062a\u062d\u0645\u064a\u0644 \u0627\u0644\u0645\u062a\u0639\u062f\u062f \u0645\u062e\u0635\u0635 \u0644\u0644\u0645\u0648\u0627\u0633\u0645 \u0648\u0627\u0644\u062d\u0644\u0642\u0627\u062a"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 105
    :cond_1
    new-instance v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    const-string v1, "h"

    invoke-static {v5, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "CA1_BATCH"

    const-string v1, "open"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "\u062a\u0639\u0630\u0631 \u0641\u062a\u062d \u0627\u0644\u062a\u062d\u0645\u064a\u0644 \u0627\u0644\u0645\u062a\u0639\u062f\u062f"

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$toastSafe$0(Landroid/content/Context;Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    .line 33
    if-nez p0, :cond_0

    move-object p0, p1

    :cond_0
    const/4 p1, 0x0

    :try_start_0
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "toast_error"

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "guard"

    invoke-static {v0, p1, p2, p0}, Lcom/shabakaty/cinemana/ca1/BatchLog;->event(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$visibility$1(Ljava/lang/Object;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 38
    add-int/lit8 p3, p3, 0x1

    invoke-static {p0, p1, p2, p3}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->visibility(Ljava/lang/Object;Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method static varargs make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->fits([Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/NoSuchMethodException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " constructor"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static number(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-gez v2, :cond_0

    const-string p0, "!"

    return-object p0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_2

    const-string p0, ""

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method static order(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 115
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static pool(I)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 8

    .line 32
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    const-wide/16 v3, 0x0

    move-object v0, v7

    move v1, p0

    move v2, p0

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-object v7
.end method

.method static probeSize(Ljava/lang/String;)J
    .locals 2

    .line 247
    const-string v0, "test"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->probeSize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static probeSize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/Sizes;->probe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static proxy(Ljava/lang/String;Lcom/shabakaty/cinemana/ca1/BatchDownload$Callback;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-instance p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$2;

    invoke-direct {p0, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$2;-><init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Callback;)V

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static release(Ljava/lang/Object;)V
    .locals 1

    .line 109
    sget-object v0, Lcom/shabakaty/cinemana/ca1/BatchDownload;->activeScreen:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shabakaty/cinemana/ca1/BatchDownload;->activeScreen:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    iget-object v0, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->fragment:Ljava/lang/Object;

    if-ne v0, p0, :cond_0

    sget-object p0, Lcom/shabakaty/cinemana/ca1/BatchDownload;->activeScreen:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    iget-object p0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    const/4 p0, 0x0

    sput-object p0, Lcom/shabakaty/cinemana/ca1/BatchDownload;->activeScreen:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    :cond_0
    return-void
.end method

.method static series(Ljava/lang/Object;)Z
    .locals 1

    .line 37
    if-eqz p0, :cond_0

    const-string v0, "kind"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 42
    const-string v0, ""

    :try_start_0
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    return-object v0
.end method

.method public static toastSafe(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 4

    .line 33
    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/BatchLog;->init(Landroid/content/Context;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "guard"

    const-string v3, "toast_post"

    invoke-static {v2, v3, v0, v1}, Lcom/shabakaty/cinemana/ca1/BatchLog;->event(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Ui;->MAIN:Landroid/os/Handler;

    new-instance v2, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0, p0, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static type(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static unwrap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.shabakaty.downloader.tj"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    const-string v0, "b"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "\u062a\u0639\u0630\u0631 \u062c\u0644\u0628 \u0628\u064a\u0627\u0646\u0627\u062a \u0627\u0644\u062d\u0644\u0642\u0629"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 94
    :cond_1
    return-object p0
.end method

.method static visibility(Ljava/lang/Object;Landroid/view/View;Landroid/view/View;I)V
    .locals 6

    .line 38
    const-string v0, "v"

    const/16 v1, 0x8

    :try_start_0
    const-string v2, "c2"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v4}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v0}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "a"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v5}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->series(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const/16 v0, 0x78

    if-ge p3, v0, :cond_1

    const v0, 0x7f0a0588

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_1

    new-instance v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;Landroid/view/View;Landroid/view/View;I)V

    const-wide/16 p2, 0x1f4

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
