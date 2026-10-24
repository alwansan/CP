.class public final Lcom/shabakaty/downloader/bd3$b$a;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/bd3$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/xd1$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/xd1$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/xd1$b;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/bd3$b$a;->a:Lcom/shabakaty/downloader/xd1$b;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/bd3$b;)Lcom/shabakaty/downloader/bd3$b$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bd3$b$a;->a:Lcom/shabakaty/downloader/xd1$b;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/bd3$b;->a:Lcom/shabakaty/downloader/xd1;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xd1;->c()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/xd1;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/xd1$b;->a(I)Lcom/shabakaty/downloader/xd1$b;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public b(IZ)Lcom/shabakaty/downloader/bd3$b$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bd3$b$a;->a:Lcom/shabakaty/downloader/xd1$b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 2
    iget-boolean p2, v0, Lcom/shabakaty/downloader/xd1$b;->b:Z

    const/4 v1, 0x1

    xor-int/2addr p2, v1

    invoke-static {p2}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 3
    iget-object p2, v0, Lcom/shabakaty/downloader/xd1$b;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_0
    return-object p0
.end method

.method public c()Lcom/shabakaty/downloader/bd3$b;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/bd3$b;

    iget-object v1, p0, Lcom/shabakaty/downloader/bd3$b$a;->a:Lcom/shabakaty/downloader/xd1$b;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/xd1$b;->b()Lcom/shabakaty/downloader/xd1;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/bd3$b;-><init>(Lcom/shabakaty/downloader/xd1;Lcom/shabakaty/downloader/bd3$a;)V

    return-object v0
.end method
