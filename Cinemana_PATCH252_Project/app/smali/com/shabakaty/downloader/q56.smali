.class public final Lcom/shabakaty/downloader/q56;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# instance fields
.field public final a:Lcom/shabakaty/downloader/fr6;

.field public final b:Ljava/lang/Boolean;

.field public final c:Lcom/shabakaty/downloader/pq6;

.field public final d:Lcom/shabakaty/downloader/oy6;

.field public final e:Lcom/shabakaty/downloader/iu5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/iu5<",
            "Lcom/shabakaty/downloader/vs6;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcom/shabakaty/downloader/iu5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/iu5<",
            "Lcom/shabakaty/downloader/ys6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/m46;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/m46;->a:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/fr6;

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/q56;->a:Lcom/shabakaty/downloader/fr6;

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/m46;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/q56;->b:Ljava/lang/Boolean;

    .line 5
    iget-object v0, p1, Lcom/shabakaty/downloader/m46;->c:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/pq6;

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/q56;->c:Lcom/shabakaty/downloader/pq6;

    .line 7
    iget-object v0, p1, Lcom/shabakaty/downloader/m46;->d:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/oy6;

    .line 8
    iput-object v0, p0, Lcom/shabakaty/downloader/q56;->d:Lcom/shabakaty/downloader/oy6;

    .line 9
    iget-object v0, p1, Lcom/shabakaty/downloader/m46;->e:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/iu5;

    .line 10
    iput-object v0, p0, Lcom/shabakaty/downloader/q56;->e:Lcom/shabakaty/downloader/iu5;

    .line 11
    iget-object p1, p1, Lcom/shabakaty/downloader/m46;->f:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/iu5;

    .line 12
    iput-object p1, p0, Lcom/shabakaty/downloader/q56;->f:Lcom/shabakaty/downloader/iu5;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/q56;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/q56;

    iget-object v1, p0, Lcom/shabakaty/downloader/q56;->a:Lcom/shabakaty/downloader/fr6;

    .line 3
    iget-object v3, p1, Lcom/shabakaty/downloader/q56;->a:Lcom/shabakaty/downloader/fr6;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/q56;->b:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/shabakaty/downloader/q56;->b:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/q56;->c:Lcom/shabakaty/downloader/pq6;

    iget-object v3, p1, Lcom/shabakaty/downloader/q56;->c:Lcom/shabakaty/downloader/pq6;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/q56;->d:Lcom/shabakaty/downloader/oy6;

    iget-object v3, p1, Lcom/shabakaty/downloader/q56;->d:Lcom/shabakaty/downloader/oy6;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/q56;->e:Lcom/shabakaty/downloader/iu5;

    iget-object v3, p1, Lcom/shabakaty/downloader/q56;->e:Lcom/shabakaty/downloader/iu5;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/q56;->f:Lcom/shabakaty/downloader/iu5;

    iget-object p1, p1, Lcom/shabakaty/downloader/q56;->f:Lcom/shabakaty/downloader/iu5;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/shabakaty/downloader/q56;->a:Lcom/shabakaty/downloader/fr6;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/shabakaty/downloader/q56;->b:Ljava/lang/Boolean;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/q56;->c:Lcom/shabakaty/downloader/pq6;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/q56;->d:Lcom/shabakaty/downloader/oy6;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/q56;->e:Lcom/shabakaty/downloader/iu5;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/q56;->f:Lcom/shabakaty/downloader/iu5;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
