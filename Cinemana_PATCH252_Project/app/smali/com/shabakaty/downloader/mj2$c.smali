.class public Lcom/shabakaty/downloader/mj2$c;
.super Lcom/shabakaty/downloader/o35;
.source "LoaderManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/mj2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final c:Landroidx/lifecycle/n$b;


# instance fields
.field public a:Lcom/shabakaty/downloader/w94;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/w94<",
            "Lcom/shabakaty/downloader/mj2$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/mj2$c$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/mj2$c$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/mj2$c;->c:Landroidx/lifecycle/n$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/o35;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/w94;

    invoke-direct {v0}, Lcom/shabakaty/downloader/w94;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/mj2$c;->a:Lcom/shabakaty/downloader/w94;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/mj2$c;->b:Z

    return-void
.end method


# virtual methods
.method public onCleared()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/o35;->onCleared()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/mj2$c;->a:Lcom/shabakaty/downloader/w94;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/w94;->i()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    iget-object v3, p0, Lcom/shabakaty/downloader/mj2$c;->a:Lcom/shabakaty/downloader/w94;

    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/w94;->j(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/mj2$a;

    const/4 v4, 0x1

    .line 4
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/mj2$a;->a(Z)Lcom/shabakaty/downloader/jj2;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/mj2$c;->a:Lcom/shabakaty/downloader/w94;

    .line 6
    iget v2, v0, Lcom/shabakaty/downloader/w94;->u:I

    .line 7
    iget-object v3, v0, Lcom/shabakaty/downloader/w94;->t:[Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    const/4 v5, 0x0

    .line 8
    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 9
    :cond_1
    iput v1, v0, Lcom/shabakaty/downloader/w94;->u:I

    .line 10
    iput-boolean v1, v0, Lcom/shabakaty/downloader/w94;->r:Z

    return-void
.end method
