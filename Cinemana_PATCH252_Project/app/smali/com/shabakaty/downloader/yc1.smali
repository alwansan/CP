.class public final Lcom/shabakaty/downloader/yc1;
.super Lcom/shabakaty/downloader/sb3;
.source "FirebasePerfTraceValidator.java"


# static fields
.field public static final b:Lcom/shabakaty/downloader/i7;


# instance fields
.field public final a:Lcom/shabakaty/downloader/uo4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/i7;->d()Lcom/shabakaty/downloader/i7;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/yc1;->b:Lcom/shabakaty/downloader/i7;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/uo4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/sb3;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/yc1;->a:Lcom/shabakaty/downloader/uo4;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yc1;->a:Lcom/shabakaty/downloader/uo4;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/yc1;->e(Lcom/shabakaty/downloader/uo4;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/yc1;->b:Lcom/shabakaty/downloader/i7;

    const-string v2, "Invalid Trace:"

    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shabakaty/downloader/yc1;->a:Lcom/shabakaty/downloader/uo4;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/uo4;->P()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/i7;->f(Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/yc1;->a:Lcom/shabakaty/downloader/uo4;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uo4;->K()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uo4;->R()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/uo4;

    .line 6
    invoke-virtual {v2}, Lcom/shabakaty/downloader/uo4;->K()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_6

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/yc1;->a:Lcom/shabakaty/downloader/uo4;

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/yc1;->d(Lcom/shabakaty/downloader/uo4;I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/yc1;->b:Lcom/shabakaty/downloader/i7;

    const-string v2, "Invalid Counters for Trace:"

    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shabakaty/downloader/yc1;->a:Lcom/shabakaty/downloader/uo4;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/uo4;->P()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/i7;->f(Ljava/lang/String;)V

    return v1

    :cond_6
    return v3
.end method

.method public final d(Lcom/shabakaty/downloader/uo4;I)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "FirebasePerformance"

    const/4 v2, 0x1

    if-le p2, v2, :cond_2

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/yc1;->b:Lcom/shabakaty/downloader/i7;

    .line 2
    iget-boolean p2, p1, Lcom/shabakaty/downloader/i7;->b:Z

    if-eqz p2, :cond_1

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/i7;->a:Lcom/shabakaty/downloader/lk2;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Exceed MAX_SUBTRACE_DEEP:1"

    .line 4
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uo4;->L()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_4

    goto :goto_0

    .line 7
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 9
    sget-object v5, Lcom/shabakaty/downloader/yc1;->b:Lcom/shabakaty/downloader/i7;

    .line 10
    iget-boolean v6, v5, Lcom/shabakaty/downloader/i7;->b:Z

    if-eqz v6, :cond_6

    .line 11
    iget-object v5, v5, Lcom/shabakaty/downloader/i7;->a:Lcom/shabakaty/downloader/lk2;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "counterId is empty"

    .line 12
    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x64

    if-le v5, v6, :cond_7

    .line 14
    sget-object v5, Lcom/shabakaty/downloader/yc1;->b:Lcom/shabakaty/downloader/i7;

    .line 15
    iget-boolean v6, v5, Lcom/shabakaty/downloader/i7;->b:Z

    if-eqz v6, :cond_6

    .line 16
    iget-object v5, v5, Lcom/shabakaty/downloader/i7;->a:Lcom/shabakaty/downloader/lk2;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "counterId exceeded max length 100"

    .line 17
    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_7
    const/4 v5, 0x1

    :goto_1
    if-nez v5, :cond_8

    .line 18
    sget-object p1, Lcom/shabakaty/downloader/yc1;->b:Lcom/shabakaty/downloader/i7;

    const-string p2, "invalid CounterId:"

    invoke-static {p2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/i7;->f(Ljava/lang/String;)V

    return v0

    .line 19
    :cond_8
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    goto :goto_2

    :cond_9
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_3

    .line 20
    sget-object p1, Lcom/shabakaty/downloader/yc1;->b:Lcom/shabakaty/downloader/i7;

    const-string p2, "invalid CounterValue:"

    invoke-static {p2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/i7;->f(Ljava/lang/String;)V

    return v0

    .line 21
    :cond_a
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uo4;->R()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/uo4;

    add-int/lit8 v3, p2, 0x1

    .line 22
    invoke-virtual {p0, v1, v3}, Lcom/shabakaty/downloader/yc1;->d(Lcom/shabakaty/downloader/uo4;I)Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    :cond_c
    return v2
.end method

.method public final e(Lcom/shabakaty/downloader/uo4;I)Z
    .locals 8

    const-string v0, "FirebasePerformance"

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/yc1;->b:Lcom/shabakaty/downloader/i7;

    .line 2
    iget-boolean p2, p1, Lcom/shabakaty/downloader/i7;->b:Z

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/i7;->a:Lcom/shabakaty/downloader/lk2;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "TraceMetric is null"

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    const/4 v2, 0x1

    if-le p2, v2, :cond_3

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/yc1;->b:Lcom/shabakaty/downloader/i7;

    .line 6
    iget-boolean p2, p1, Lcom/shabakaty/downloader/i7;->b:Z

    if-eqz p2, :cond_2

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/i7;->a:Lcom/shabakaty/downloader/lk2;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Exceed MAX_SUBTRACE_DEEP:1"

    .line 8
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uo4;->P()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x64

    if-gt v3, v4, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_6

    .line 12
    sget-object p2, Lcom/shabakaty/downloader/yc1;->b:Lcom/shabakaty/downloader/i7;

    const-string v0, "invalid TraceId:"

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shabakaty/downloader/uo4;->P()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/i7;->f(Ljava/lang/String;)V

    return v1

    .line 13
    :cond_6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uo4;->O()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_7

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_8

    .line 14
    sget-object p2, Lcom/shabakaty/downloader/yc1;->b:Lcom/shabakaty/downloader/i7;

    const-string v0, "invalid TraceDuration:"

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shabakaty/downloader/uo4;->O()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/i7;->f(Ljava/lang/String;)V

    return v1

    .line 15
    :cond_8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uo4;->S()Z

    move-result v3

    if-nez v3, :cond_a

    .line 16
    sget-object p1, Lcom/shabakaty/downloader/yc1;->b:Lcom/shabakaty/downloader/i7;

    .line 17
    iget-boolean p2, p1, Lcom/shabakaty/downloader/i7;->b:Z

    if-eqz p2, :cond_9

    .line 18
    iget-object p1, p1, Lcom/shabakaty/downloader/i7;->a:Lcom/shabakaty/downloader/lk2;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "clientStartTimeUs is null."

    .line 19
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v1

    .line 20
    :cond_a
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uo4;->R()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/uo4;

    add-int/lit8 v5, p2, 0x1

    .line 21
    invoke-virtual {p0, v4, v5}, Lcom/shabakaty/downloader/yc1;->e(Lcom/shabakaty/downloader/uo4;I)Z

    move-result v4

    if-nez v4, :cond_b

    return v1

    .line 22
    :cond_c
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uo4;->M()Ljava/util/Map;

    move-result-object p1

    .line 23
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 24
    invoke-static {p2}, Lcom/shabakaty/downloader/sb3;->b(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 25
    sget-object p1, Lcom/shabakaty/downloader/yc1;->b:Lcom/shabakaty/downloader/i7;

    .line 26
    iget-boolean v3, p1, Lcom/shabakaty/downloader/i7;->b:Z

    if-eqz v3, :cond_e

    .line 27
    iget-object p1, p1, Lcom/shabakaty/downloader/i7;->a:Lcom/shabakaty/downloader/lk2;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 p1, 0x0

    goto :goto_3

    :cond_f
    const/4 p1, 0x1

    :goto_3
    if-nez p1, :cond_10

    return v1

    :cond_10
    return v2
.end method
