.class public Landroidx/recyclerview/widget/i0$a;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static d:Lcom/shabakaty/downloader/ae3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ae3<",
            "Landroidx/recyclerview/widget/i0$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Landroidx/recyclerview/widget/RecyclerView$j$c;

.field public c:Landroidx/recyclerview/widget/RecyclerView$j$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/be3;

    const/16 v1, 0x14

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/be3;-><init>(II)V

    sput-object v0, Landroidx/recyclerview/widget/i0$a;->d:Lcom/shabakaty/downloader/ae3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroidx/recyclerview/widget/i0$a;
    .locals 1

    .line 1
    sget-object v0, Landroidx/recyclerview/widget/i0$a;->d:Lcom/shabakaty/downloader/ae3;

    check-cast v0, Lcom/shabakaty/downloader/be3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/be3;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/i0$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/i0$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/i0$a;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static b(Landroidx/recyclerview/widget/i0$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroidx/recyclerview/widget/i0$a;->a:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/recyclerview/widget/i0$a;->b:Landroidx/recyclerview/widget/RecyclerView$j$c;

    .line 3
    iput-object v0, p0, Landroidx/recyclerview/widget/i0$a;->c:Landroidx/recyclerview/widget/RecyclerView$j$c;

    .line 4
    sget-object v0, Landroidx/recyclerview/widget/i0$a;->d:Lcom/shabakaty/downloader/ae3;

    check-cast v0, Lcom/shabakaty/downloader/be3;

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/be3;->a(Ljava/lang/Object;)Z

    return-void
.end method
