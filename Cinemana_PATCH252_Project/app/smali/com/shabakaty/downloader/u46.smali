.class public final Lcom/shabakaty/downloader/u46;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# instance fields
.field public final a:Lcom/shabakaty/downloader/mq4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/mq4<",
            "Lcom/shabakaty/downloader/wx6;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/shabakaty/downloader/mq4;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Lcom/shabakaty/downloader/mq4<",
            "Lcom/shabakaty/downloader/wx6;",
            ">;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/u46;->a:Lcom/shabakaty/downloader/mq4;

    const-string p2, "client_sender_id"

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6
    :cond_0
    iput-object v0, p0, Lcom/shabakaty/downloader/u46;->b:Ljava/lang/String;

    const-wide/16 p1, 0x0

    cmp-long v0, p3, p1

    if-nez v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 7
    :goto_0
    iput p1, p0, Lcom/shabakaty/downloader/u46;->c:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/wx6;Lcom/shabakaty/downloader/ep6;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/wx6;->n(Lcom/shabakaty/downloader/wx6;)Lcom/shabakaty/downloader/wx6$a;

    move-result-object p1

    iget-object v0, p0, Lcom/shabakaty/downloader/u46;->b:Ljava/lang/String;

    .line 2
    iget-boolean v1, p1, Lcom/shabakaty/downloader/b37$b;->t:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/b37$b;->j()V

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p1, Lcom/shabakaty/downloader/b37$b;->t:Z

    .line 5
    :cond_0
    iget-object v1, p1, Lcom/shabakaty/downloader/b37$b;->s:Lcom/shabakaty/downloader/b37;

    check-cast v1, Lcom/shabakaty/downloader/wx6;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/wx6;->t(Lcom/shabakaty/downloader/wx6;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/b37$b;->l()Lcom/shabakaty/downloader/d77;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/b37;

    check-cast p1, Lcom/shabakaty/downloader/wx6;

    const/4 v0, 0x0

    .line 7
    sget-object v1, Lcom/shabakaty/downloader/ig6;->a:[I

    iget v2, p0, Lcom/shabakaty/downloader/u46;->c:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v1, v1, v2

    if-eq v1, v3, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget p2, p2, Lcom/shabakaty/downloader/ep6;->r:I

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/dh;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v1, Lcom/shabakaty/downloader/tf3;->r:Lcom/shabakaty/downloader/tf3;

    invoke-direct {v0, p2, p1, v1}, Lcom/shabakaty/downloader/dh;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lcom/shabakaty/downloader/tf3;)V

    goto :goto_0

    .line 10
    :cond_2
    iget p2, p2, Lcom/shabakaty/downloader/ep6;->r:I

    .line 11
    new-instance v0, Lcom/shabakaty/downloader/dh;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v1, Lcom/shabakaty/downloader/tf3;->s:Lcom/shabakaty/downloader/tf3;

    invoke-direct {v0, p2, p1, v1}, Lcom/shabakaty/downloader/dh;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lcom/shabakaty/downloader/tf3;)V

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/u46;->a:Lcom/shabakaty/downloader/mq4;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/mq4;->a(Lcom/shabakaty/downloader/i51;)V

    return-void
.end method
