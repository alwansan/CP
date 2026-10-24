.class public Lcom/shabakaty/downloader/l56;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# instance fields
.field public final a:Lcom/shabakaty/downloader/pk2;

.field public final b:Ljava/lang/String;

.field public c:Lcom/shabakaty/downloader/ni5;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ej5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/yw;->d(Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/l56;->b:Ljava/lang/String;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/pk2;

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/pk2;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/l56;->a:Lcom/shabakaty/downloader/pk2;

    const/4 p2, 0x0

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "[%s] "

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p1, Lcom/shabakaty/downloader/pk2;->c:Ljava/lang/String;

    .line 7
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/l56;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;JLjava/lang/String;)V
    .locals 6

    .line 1
    iget-object p4, p0, Lcom/shabakaty/downloader/l56;->a:Lcom/shabakaty/downloader/pk2;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/l56;->c:Lcom/shabakaty/downloader/ni5;

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/l56;->a:Lcom/shabakaty/downloader/pk2;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    .line 4
    iget-object p3, p1, Lcom/shabakaty/downloader/pk2;->a:Ljava/lang/String;

    const-string p4, "Attempt to send text message without a sink"

    invoke-virtual {p1, p4, p2}, Lcom/shabakaty/downloader/pk2;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/l56;->b:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v2, p1

    move-wide v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/shabakaty/downloader/ni5;->k(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final b()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/l56;->c:Lcom/shabakaty/downloader/ni5;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/l56;->a:Lcom/shabakaty/downloader/pk2;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/pk2;->a:Ljava/lang/String;

    const-string v3, "Attempt to generate requestId without a sink"

    invoke-virtual {v0, v3, v1}, Lcom/shabakaty/downloader/pk2;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/ni5;->j()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method
