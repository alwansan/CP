.class public Lcom/shabakaty/downloader/xb3;
.super Ljava/lang/Object;
.source "PermissionStorage.java"


# instance fields
.field public final a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "belvedere_prefs"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/xb3;->a:Landroid/content/SharedPreferences;

    return-void
.end method
