.class public final Lcom/shabakaty/downloader/h35;
.super Ljava/lang/Object;
.source "ViewDataBindingKtx.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/h35$b;
    }
.end annotation


# direct methods
.method public static final a(Landroidx/databinding/ViewDataBinding;ILcom/shabakaty/downloader/te1;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ViewDataBinding;",
            "I",
            "Lcom/shabakaty/downloader/te1<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->F:Z

    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/h35$a;->a:Lcom/shabakaty/downloader/h35$a;

    .line 3
    invoke-virtual {p0, p1, p2, v1}, Landroidx/databinding/ViewDataBinding;->F(ILjava/lang/Object;Lcom/shabakaty/downloader/og0;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->F:Z

    return p1

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->F:Z

    throw p1
.end method
