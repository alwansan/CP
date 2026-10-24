.class public Lcom/shabakaty/downloader/aa$g$a;
.super Landroid/content/BroadcastReceiver;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/aa$g;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/aa$g;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/aa$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/aa$g$a;->a:Lcom/shabakaty/downloader/aa$g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/aa$g$a;->a:Lcom/shabakaty/downloader/aa$g;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/aa$g;->d()V

    return-void
.end method
