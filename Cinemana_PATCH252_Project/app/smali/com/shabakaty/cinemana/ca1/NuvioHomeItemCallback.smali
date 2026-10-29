.class public final Lcom/shabakaty/cinemana/ca1/NuvioHomeItemCallback;
.super Landroidx/recyclerview/widget/j$e;
.source "NuvioHomeItemCallback.java"

.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Landroidx/recyclerview/widget/j$e;-><init>()V
    return-void
.end method

.method public areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v0
    return v0
.end method

.method public areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    instance-of v0, p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal;
    if-eqz v0, :compare
    instance-of v0, p2, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal;
    if-eqz v0, :compare
    check-cast p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;
    check-cast p2, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;->b()Ljava/lang/String;
    move-result-object p1
    invoke-virtual {p2}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;->b()Ljava/lang/String;
    move-result-object p2
    :compare
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v0
    return v0
.end method
