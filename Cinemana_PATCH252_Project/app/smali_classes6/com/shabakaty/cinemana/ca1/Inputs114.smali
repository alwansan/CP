.class public final Lcom/shabakaty/cinemana/ca1/Inputs114;
.super Ljava/lang/Object;
.source "Inputs114.java"


# static fields
.field static final scanDepth:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final scanIndex:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Properties;",
            ">;>;>;"
        }
    .end annotation
.end field

.field static final scanModels:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field static final scanPlans:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Inputs114;->scanPlans:Ljava/lang/ThreadLocal;

    .line 9
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Inputs114;->scanModels:Ljava/lang/ThreadLocal;

    .line 10
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Inputs114;->scanIndex:Ljava/lang/ThreadLocal;

    .line 11
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Inputs114;->scanDepth:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static beginScan()V
    .locals 3

    .line 12
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Inputs114;->scanDepth:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Inputs114;->scanModels:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static varargs call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static complete(Ljava/lang/Object;Ljava/io/File;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    const-string v0, "COMPLETED"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->status(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "y"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const-string v1, "t"

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    const-string p1, "r"

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide p0

    long-to-int p0, p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->active(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static endScan()V
    .locals 4

    .line 13
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Inputs114;->scanDepth:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Inputs114;->scanPlans:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Inputs114;->scanModels:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Inputs114;->scanIndex:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method static finalized(Ljava/util/Properties;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    const-string v0, ""

    const-string v1, "path"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->token(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 35
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Inputs114;->model(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    const-string v4, "nb"

    invoke-static {v2, v4}, Lcom/shabakaty/cinemana/ca1/Inputs114;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "external"

    invoke-virtual {p0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 37
    const/4 v7, 0x1

    if-nez v6, :cond_2

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->subtitles(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    const-string v9, "id"

    invoke-static {v8, v9}, Lcom/shabakaty/cinemana/ca1/Inputs114;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "file"

    invoke-static {v8, v9}, Lcom/shabakaty/cinemana/ca1/Inputs114;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "url"

    invoke-virtual {p0, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v6, v7

    goto :goto_0

    .line 38
    :cond_2
    if-nez v6, :cond_3

    return v3

    .line 39
    :cond_3
    sget-object p0, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    const-string v2, "h"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v5}, Lcom/shabakaty/cinemana/ca1/Inputs114;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    filled-new-array {p0, v4}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "readCombinedById"

    invoke-static {v2, p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_4

    return v3

    .line 40
    :cond_4
    const-string v2, "cinemanaDownloadItem"

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    new-instance v2, Ljava/io/File;

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Inputs114;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->identityToken(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->valid(Ljava/io/File;J)Z

    move-result p0

    if-eqz p0, :cond_5

    move v3, v7

    :cond_5
    return v3

    .line 35
    :catch_0
    move-exception p0

    return v3
.end method

.method static identity(Ljava/lang/Object;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "extention"

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Inputs114;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 45
    const-string v2, "id"

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/ca1/Inputs114;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "file"

    invoke-static {p0, p3}, Lcom/shabakaty/cinemana/ca1/Inputs114;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->safe(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p4}, Lcom/shabakaty/cinemana/ca1/Restart108;->token(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$model$0(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 22
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static model(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Inputs114;->scanModels:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "subtitle plan not available yet"

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_1
    nop

    .line 17
    sget-object v2, Lcom/shabakaty/cinemana/ca1/Inputs114;->scanIndex:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 18
    const-string v3, ""

    if-nez v2, :cond_5

    .line 19
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->prefs()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "getAll"

    invoke-static {v4, v6, v5}, Lcom/shabakaty/cinemana/ca1/Inputs114;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v0, :cond_2

    sget-object v5, Lcom/shabakaty/cinemana/ca1/Inputs114;->scanPlans:Ljava/lang/ThreadLocal;

    invoke-virtual {v5, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 20
    :cond_2
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "plan:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 21
    :try_start_0
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/Restart108;->decode(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    const-string v6, "token"

    invoke-virtual {v5, v6, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Lcom/shabakaty/cinemana/ca1/Inputs114$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/shabakaty/cinemana/ca1/Inputs114$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :catch_0
    move-exception v5

    goto :goto_0

    .line 20
    :cond_3
    :goto_1
    goto :goto_0

    .line 24
    :cond_4
    if-eqz v0, :cond_5

    sget-object v4, Lcom/shabakaty/cinemana/ca1/Inputs114;->scanIndex:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 26
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, p0, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Properties;

    .line 27
    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->unpack(Ljava/util/Properties;)Ljava/lang/Object;

    move-result-object v6

    .line 28
    const-string v7, "id"

    invoke-virtual {v5, v7, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "nb"

    invoke-static {v6, v7}, Lcom/shabakaty/cinemana/ca1/Inputs114;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->content(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 29
    if-nez v4, :cond_6

    .line 30
    move-object v4, v6

    goto :goto_2

    .line 29
    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string v0, "ambiguous subtitle plan"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string v0, "subtitle plan identity mismatch"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_8
    if-eqz v0, :cond_9

    invoke-interface {v0, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    if-eqz v4, :cond_a

    return-object v4

    :cond_a
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static pathActive(Ljava/io/File;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "x"

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/ca1/Inputs114;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "r"

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->active(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 53
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static select(Ljava/lang/Object;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->subtitles(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/shabakaty/cinemana/ca1/Inputs114;->selectList(Ljava/util/List;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static selectList(Ljava/util/List;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    move-object/from16 v0, p3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 61
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 62
    nop

    .line 63
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v5, 0x0

    move-object v12, v5

    :cond_0
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    const-string v5, "s"

    invoke-static {v13, v5}, Lcom/shabakaty/cinemana/ca1/Inputs114;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v14, "x"

    invoke-static {v13, v14}, Lcom/shabakaty/cinemana/ca1/Inputs114;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "v"

    invoke-static {v13, v5}, Lcom/shabakaty/cinemana/ca1/Inputs114;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v4

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-static/range {v5 .. v10}, Lcom/shabakaty/cinemana/ca1/Inputs114;->identity(Ljava/lang/Object;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 64
    new-instance v5, Ljava/io/File;

    invoke-static {v13, v14}, Lcom/shabakaty/cinemana/ca1/Inputs114;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v13, v5}, Lcom/shabakaty/cinemana/ca1/Inputs114;->complete(Ljava/lang/Object;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5, v0}, Lcom/shabakaty/cinemana/ca1/Inputs114;->pathActive(Ljava/io/File;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 65
    :cond_1
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ambiguous completed subtitle"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    move-object v12, v5

    .line 63
    :cond_4
    goto :goto_1

    .line 68
    :cond_5
    if-nez v12, :cond_10

    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "done:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 69
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/Restart108;->decode(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v13

    const-string v5, "path"

    const-string v6, ""

    invoke-virtual {v13, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 70
    const-string v5, "external"

    invoke-virtual {v13, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "url"

    invoke-virtual {v13, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v4

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object v9, v14

    invoke-static/range {v5 .. v10}, Lcom/shabakaty/cinemana/ca1/Inputs114;->identity(Ljava/lang/Object;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_3

    .line 71
    :cond_7
    const-string v5, "task"

    invoke-virtual {v13, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/Restart108;->active(I)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/Queue110;->isPaused(I)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_3

    .line 72
    :cond_8
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v7, "size"

    const-string v8, "0"

    invoke-virtual {v13, v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_6

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v7, v9, v7

    if-eqz v7, :cond_9

    goto/16 :goto_3

    .line 74
    :cond_9
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    :cond_a
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    int-to-long v13, v5

    const-string v10, "r"

    invoke-static {v9, v10}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v15

    cmp-long v10, v13, v15

    if-nez v10, :cond_a

    invoke-static {v9, v6}, Lcom/shabakaty/cinemana/ca1/Inputs114;->complete(Ljava/lang/Object;Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_a

    const/4 v8, 0x1

    goto :goto_4

    .line 75
    :cond_b
    if-nez v8, :cond_6

    invoke-static {v6, v0}, Lcom/shabakaty/cinemana/ca1/Inputs114;->pathActive(Ljava/io/File;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto/16 :goto_3

    .line 76
    :cond_c
    if-eqz v12, :cond_e

    invoke-virtual {v12}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_5

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ambiguous subtitle receipt"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_5
    move-object v12, v6

    .line 68
    :cond_f
    goto/16 :goto_3

    .line 78
    :cond_10
    if-eqz v12, :cond_12

    .line 79
    invoke-virtual {v12}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    goto/16 :goto_0

    .line 79
    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "subtitle identities share a path"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_12
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subtitle not committed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "id"

    invoke-static {v4, v2}, Lcom/shabakaty/cinemana/ca1/Inputs114;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_13
    return-object v1
.end method

.method static selectSub(Ljava/lang/Object;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/shabakaty/cinemana/ca1/Inputs114;->selectList(Ljava/util/List;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static verified(Ljava/lang/Object;Ljava/io/File;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 84
    :try_start_0
    const-string v0, "getApplicationContext"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/shabakaty/cinemana/ca1/Inputs114;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->token(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Inputs114;->model(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "getDownloadsDao"

    filled-new-array {p0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 86
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    const-string v3, "readAllDownloads"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->pref()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "getAll"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v1}, Lcom/shabakaty/cinemana/ca1/Inputs114;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v2, v0, p1, p0, v1}, Lcom/shabakaty/cinemana/ca1/Inputs114;->select(Ljava/lang/Object;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    .line 87
    const-string p1, "com.shabakaty.cinemana.features.MkvManifestStore"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "expectedSubtitleCount"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/shabakaty/cinemana/ca1/Inputs114;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 88
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INPUTS114_VERIFIED token="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " count="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Restart108;->trace(Ljava/lang/String;)V

    return-object p0

    .line 88
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "subtitle plan count mismatch"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :catch_0
    move-exception p0

    const-string p1, "inputs114_deferred"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return-object p0
.end method
