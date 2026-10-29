.class public final Lcom/shabakaty/cinemana/local/HomeScrollPerfListener;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "HomeScrollPerfListener.smali"

# Numeric scroll telemetry only, no per-frame allocations or file writes.
.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1
    const/4 v0, 0x1
    invoke-static {v0, p3}, Lcom/shabakaty/cinemana/local/UiPerfDiag;->scroll(II)V
    return-void
.end method
