.class public final Lcom/shabakaty/downloader/x23;
.super Ljava/lang/Object;
.source "OSInfluenceConstants.kt"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Lcom/shabakaty/downloader/x23;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/x23;

    invoke-direct {v0}, Lcom/shabakaty/downloader/x23;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/x23;->c:Lcom/shabakaty/downloader/x23;

    .line 2
    const-class v0, Lcom/shabakaty/downloader/u23;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sput-object v0, Lcom/shabakaty/downloader/x23;->a:Ljava/lang/String;

    .line 3
    const-class v0, Lcom/shabakaty/downloader/k33;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sput-object v0, Lcom/shabakaty/downloader/x23;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
