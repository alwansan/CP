.class public final Lcom/shabakaty/cinemana/ui/settings/SettingsActivity$a;
.super Lcom/shabakaty/downloader/af2;
.source "SettingsActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Landroidx/navigation/NavController;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/settings/SettingsActivity$a;->r:Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/settings/SettingsActivity$a;->r:Lcom/shabakaty/cinemana/ui/settings/SettingsActivity;

    const v1, 0x7f0a040b

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/kl3;->c(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    move-result-object v0

    return-object v0
.end method
