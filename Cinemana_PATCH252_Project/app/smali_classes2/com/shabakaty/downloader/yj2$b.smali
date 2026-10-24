.class public Lcom/shabakaty/downloader/yj2$b;
.super Lcom/shabakaty/downloader/yj2$j;
.source "LockBasedStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/yj2;->e(Lcom/shabakaty/downloader/rm1;Ljava/lang/Object;)Lcom/shabakaty/downloader/d03;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/yj2$j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic u:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yj2;Lcom/shabakaty/downloader/yj2;Lcom/shabakaty/downloader/rm1;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p4, p0, Lcom/shabakaty/downloader/yj2$b;->u:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lcom/shabakaty/downloader/yj2$j;-><init>(Lcom/shabakaty/downloader/yj2;Lcom/shabakaty/downloader/rm1;)V

    return-void
.end method


# virtual methods
.method public c(Z)Lcom/shabakaty/downloader/yj2$o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/shabakaty/downloader/yj2$o<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/yj2$b;->u:Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/yj2$o;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/yj2$o;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method
