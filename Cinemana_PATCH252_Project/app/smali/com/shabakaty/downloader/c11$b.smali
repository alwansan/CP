.class public Lcom/shabakaty/downloader/c11$b;
.super Ljava/lang/Object;
.source "DropDownListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/c11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/c11;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/c11;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/c11$b;->r:Lcom/shabakaty/downloader/c11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c11$b;->r:Lcom/shabakaty/downloader/c11;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/shabakaty/downloader/c11;->D:Lcom/shabakaty/downloader/c11$b;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/c11;->drawableStateChanged()V

    return-void
.end method
