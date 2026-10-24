.class public final Lcom/shabakaty/downloader/ch0$a;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "CustomSpinnerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ch0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$b0;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/qz2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qz2;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/ch0$a;->a:Lcom/shabakaty/downloader/qz2;

    return-void
.end method
