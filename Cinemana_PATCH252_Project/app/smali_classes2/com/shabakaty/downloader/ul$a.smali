.class public Lcom/shabakaty/downloader/ul$a;
.super Ljava/lang/Object;
.source "Belvedere.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ul;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/shabakaty/downloader/ye2$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ul$a;->a:Landroid/content/Context;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/ye2$a;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ye2$a;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ul$a;->b:Lcom/shabakaty/downloader/ye2$b;

    return-void
.end method
