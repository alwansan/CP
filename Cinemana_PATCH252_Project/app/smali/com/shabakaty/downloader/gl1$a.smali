.class public Lcom/shabakaty/downloader/gl1$a;
.super Ljava/lang/Object;
.source "FragmentUserListDetailsBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/gl1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public r:Lcom/shabakaty/downloader/cy4;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gl1$a;->r:Lcom/shabakaty/downloader/cy4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/cy4;->b()V

    const/4 v0, 0x0

    return-object v0
.end method
