.class public Lcom/shabakaty/downloader/mt0;
.super Ljava/lang/Object;
.source "DisableClickListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final r:Lcom/shabakaty/downloader/ch2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ch2;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ch2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/mt0;->r:Lcom/shabakaty/downloader/ch2;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/mt0;->r:Lcom/shabakaty/downloader/ch2;

    .line 2
    iget-object p2, p1, Lcom/shabakaty/downloader/ch2;->b:Landroid/content/SharedPreferences$Editor;

    const/4 v0, 0x0

    const-string v1, "prefAppUpdaterShow"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/ch2;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
