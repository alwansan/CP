.class public interface abstract Lzendesk/belvedere/c$b;
.super Ljava/lang/Object;
.source "ImageStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/belvedere/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract onDismissed()V
.end method

.method public abstract onMediaDeselected(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/tp2;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMediaSelected(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/tp2;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onVisible()V
.end method
