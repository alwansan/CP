.class public final Lcom/shabakaty/downloader/pn3$c;
.super Lcom/shabakaty/downloader/qd;
.source "RealCall.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/pn3;-><init>(Lcom/shabakaty/downloader/a63;Lcom/shabakaty/downloader/vr3;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic l:Lcom/shabakaty/downloader/pn3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/pn3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/pn3$c;->l:Lcom/shabakaty/downloader/pn3;

    invoke-direct {p0}, Lcom/shabakaty/downloader/qd;-><init>()V

    return-void
.end method


# virtual methods
.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pn3$c;->l:Lcom/shabakaty/downloader/pn3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/pn3;->cancel()V

    return-void
.end method
