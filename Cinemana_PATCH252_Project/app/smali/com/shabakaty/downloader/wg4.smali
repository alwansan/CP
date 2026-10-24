.class public final Lcom/shabakaty/downloader/wg4;
.super Ljava/lang/Object;
.source "SubtitlesSettingsFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final r:Lcom/shabakaty/downloader/wg4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/wg4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/wg4;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/wg4;->r:Lcom/shabakaty/downloader/wg4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
