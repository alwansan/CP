.class public abstract Lcom/shabakaty/downloader/mr0;
.super Ljava/lang/Object;
.source "DescriptorVisibility.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/shabakaty/downloader/y45;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c(Lcom/shabakaty/downloader/co3;Lcom/shabakaty/downloader/wm0;Lcom/shabakaty/downloader/qm0;)Z
.end method

.method public abstract d()Lcom/shabakaty/downloader/mr0;
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mr0;->a()Lcom/shabakaty/downloader/y45;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/y45;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
