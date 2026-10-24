.class public final Lcom/shabakaty/downloader/gg4$p;
.super Lcom/shabakaty/downloader/gg4;
.source "Fonts.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/gg4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "p"
.end annotation


# static fields
.field public static final e:Lcom/shabakaty/downloader/gg4$p;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/gg4$p;

    invoke-direct {v0}, Lcom/shabakaty/downloader/gg4$p;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/gg4$p;->e:Lcom/shabakaty/downloader/gg4$p;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "The Sans Bold"

    const-string v1, "fonts/TheSans-Bold.otf"

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lcom/shabakaty/downloader/gg4;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    return-void
.end method
