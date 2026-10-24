.class public final Lcom/shabakaty/downloader/gg4$m;
.super Lcom/shabakaty/downloader/gg4;
.source "Fonts.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/gg4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation


# static fields
.field public static final e:Lcom/shabakaty/downloader/gg4$m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/gg4$m;

    invoke-direct {v0}, Lcom/shabakaty/downloader/gg4$m;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/gg4$m;->e:Lcom/shabakaty/downloader/gg4$m;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "Makkah"

    const-string v1, "fonts/makkah.otf"

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lcom/shabakaty/downloader/gg4;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    return-void
.end method
