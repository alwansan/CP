.class public final synthetic Lcom/shabakaty/downloader/tw4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/fj4$a;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ww4;

.field public final synthetic s:Lcom/google/android/datatransport/runtime/backends/b;

.field public final synthetic t:Ljava/lang/Iterable;

.field public final synthetic u:Lcom/shabakaty/downloader/oq4;

.field public final synthetic v:I


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/ww4;Lcom/google/android/datatransport/runtime/backends/b;Ljava/lang/Iterable;Lcom/shabakaty/downloader/oq4;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/tw4;->r:Lcom/shabakaty/downloader/ww4;

    iput-object p2, p0, Lcom/shabakaty/downloader/tw4;->s:Lcom/google/android/datatransport/runtime/backends/b;

    iput-object p3, p0, Lcom/shabakaty/downloader/tw4;->t:Ljava/lang/Iterable;

    iput-object p4, p0, Lcom/shabakaty/downloader/tw4;->u:Lcom/shabakaty/downloader/oq4;

    iput p5, p0, Lcom/shabakaty/downloader/tw4;->v:I

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/shabakaty/downloader/tw4;->r:Lcom/shabakaty/downloader/ww4;

    iget-object v1, p0, Lcom/shabakaty/downloader/tw4;->s:Lcom/google/android/datatransport/runtime/backends/b;

    iget-object v2, p0, Lcom/shabakaty/downloader/tw4;->t:Ljava/lang/Iterable;

    iget-object v3, p0, Lcom/shabakaty/downloader/tw4;->u:Lcom/shabakaty/downloader/oq4;

    iget v4, p0, Lcom/shabakaty/downloader/tw4;->v:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/backends/b;->c()Lcom/google/android/datatransport/runtime/backends/b$a;

    move-result-object v5

    sget-object v6, Lcom/google/android/datatransport/runtime/backends/b$a;->s:Lcom/google/android/datatransport/runtime/backends/b$a;

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/ww4;->c:Lcom/shabakaty/downloader/x51;

    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/x51;->p1(Ljava/lang/Iterable;)V

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/ww4;->d:Lcom/shabakaty/downloader/b85;

    add-int/2addr v4, v7

    invoke-interface {v0, v3, v4}, Lcom/shabakaty/downloader/b85;->b(Lcom/shabakaty/downloader/oq4;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v4, v0, Lcom/shabakaty/downloader/ww4;->c:Lcom/shabakaty/downloader/x51;

    invoke-interface {v4, v2}, Lcom/shabakaty/downloader/x51;->E(Ljava/lang/Iterable;)V

    .line 5
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/backends/b;->c()Lcom/google/android/datatransport/runtime/backends/b$a;

    move-result-object v2

    sget-object v4, Lcom/google/android/datatransport/runtime/backends/b$a;->r:Lcom/google/android/datatransport/runtime/backends/b$a;

    if-ne v2, v4, :cond_1

    .line 6
    iget-object v2, v0, Lcom/shabakaty/downloader/ww4;->c:Lcom/shabakaty/downloader/x51;

    iget-object v4, v0, Lcom/shabakaty/downloader/ww4;->g:Lcom/shabakaty/downloader/y30;

    .line 7
    invoke-interface {v4}, Lcom/shabakaty/downloader/y30;->a()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/backends/b;->b()J

    move-result-wide v8

    add-long/2addr v8, v4

    .line 8
    invoke-interface {v2, v3, v8, v9}, Lcom/shabakaty/downloader/x51;->J0(Lcom/shabakaty/downloader/oq4;J)V

    .line 9
    :cond_1
    iget-object v1, v0, Lcom/shabakaty/downloader/ww4;->c:Lcom/shabakaty/downloader/x51;

    invoke-interface {v1, v3}, Lcom/shabakaty/downloader/x51;->r0(Lcom/shabakaty/downloader/oq4;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/ww4;->d:Lcom/shabakaty/downloader/b85;

    invoke-interface {v0, v3, v7, v7}, Lcom/shabakaty/downloader/b85;->a(Lcom/shabakaty/downloader/oq4;IZ)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
