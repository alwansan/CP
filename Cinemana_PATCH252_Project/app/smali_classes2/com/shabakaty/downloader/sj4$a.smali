.class public final Lcom/shabakaty/downloader/sj4$a;
.super Ljava/lang/Object;
.source "SyntheticJavaPartsProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/sj4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lcom/shabakaty/downloader/sj4$a;

.field public static final b:Lcom/shabakaty/downloader/h90;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/sj4$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/sj4$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/sj4$a;->a:Lcom/shabakaty/downloader/sj4$a;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/h90;

    sget-object v1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/h90;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/shabakaty/downloader/sj4$a;->b:Lcom/shabakaty/downloader/h90;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
