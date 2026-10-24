.class public final Lcom/shabakaty/downloader/xd1$b;
.super Ljava/lang/Object;
.source "FlagSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/xd1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/util/SparseBooleanArray;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/xd1$b;->a:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/shabakaty/downloader/xd1$b;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/xd1$b;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/xd1$b;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    return-object p0
.end method

.method public b()Lcom/shabakaty/downloader/xd1;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/xd1$b;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    iput-boolean v1, p0, Lcom/shabakaty/downloader/xd1$b;->b:Z

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/xd1;

    iget-object v1, p0, Lcom/shabakaty/downloader/xd1$b;->a:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/xd1;-><init>(Landroid/util/SparseBooleanArray;Lcom/shabakaty/downloader/xd1$a;)V

    return-object v0
.end method
