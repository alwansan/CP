.class public final Lcom/shabakaty/downloader/tx4$b;
.super Lcom/shabakaty/downloader/tx4;
.source "SettingsEntity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/tx4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final b:Lcom/shabakaty/downloader/tx4$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/tx4$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/tx4$b;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/tx4$b;->b:Lcom/shabakaty/downloader/tx4$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "en"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/shabakaty/downloader/tx4;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    return-void
.end method
