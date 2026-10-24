.class public abstract Lcom/shabakaty/downloader/wb2;
.super Ljava/lang/Object;
.source "methodSignatureMapping.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/wb2$c;,
        Lcom/shabakaty/downloader/wb2$b;,
        Lcom/shabakaty/downloader/wb2$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/wb2;

.field public static final b:Lcom/shabakaty/downloader/wb2$c;

.field public static final c:Lcom/shabakaty/downloader/wb2$c;

.field public static final d:Lcom/shabakaty/downloader/wb2$c;

.field public static final e:Lcom/shabakaty/downloader/wb2$c;

.field public static final f:Lcom/shabakaty/downloader/wb2$c;

.field public static final g:Lcom/shabakaty/downloader/wb2$c;

.field public static final h:Lcom/shabakaty/downloader/wb2$c;

.field public static final i:Lcom/shabakaty/downloader/wb2$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/wb2$c;

    sget-object v1, Lcom/shabakaty/downloader/sb2;->v:Lcom/shabakaty/downloader/sb2;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/wb2$c;-><init>(Lcom/shabakaty/downloader/sb2;)V

    sput-object v0, Lcom/shabakaty/downloader/wb2;->b:Lcom/shabakaty/downloader/wb2$c;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/wb2$c;

    sget-object v1, Lcom/shabakaty/downloader/sb2;->w:Lcom/shabakaty/downloader/sb2;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/wb2$c;-><init>(Lcom/shabakaty/downloader/sb2;)V

    sput-object v0, Lcom/shabakaty/downloader/wb2;->c:Lcom/shabakaty/downloader/wb2$c;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/wb2$c;

    sget-object v1, Lcom/shabakaty/downloader/sb2;->x:Lcom/shabakaty/downloader/sb2;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/wb2$c;-><init>(Lcom/shabakaty/downloader/sb2;)V

    sput-object v0, Lcom/shabakaty/downloader/wb2;->d:Lcom/shabakaty/downloader/wb2$c;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/wb2$c;

    sget-object v1, Lcom/shabakaty/downloader/sb2;->y:Lcom/shabakaty/downloader/sb2;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/wb2$c;-><init>(Lcom/shabakaty/downloader/sb2;)V

    sput-object v0, Lcom/shabakaty/downloader/wb2;->e:Lcom/shabakaty/downloader/wb2$c;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/wb2$c;

    sget-object v1, Lcom/shabakaty/downloader/sb2;->z:Lcom/shabakaty/downloader/sb2;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/wb2$c;-><init>(Lcom/shabakaty/downloader/sb2;)V

    sput-object v0, Lcom/shabakaty/downloader/wb2;->f:Lcom/shabakaty/downloader/wb2$c;

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/wb2$c;

    sget-object v1, Lcom/shabakaty/downloader/sb2;->A:Lcom/shabakaty/downloader/sb2;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/wb2$c;-><init>(Lcom/shabakaty/downloader/sb2;)V

    sput-object v0, Lcom/shabakaty/downloader/wb2;->g:Lcom/shabakaty/downloader/wb2$c;

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/wb2$c;

    sget-object v1, Lcom/shabakaty/downloader/sb2;->B:Lcom/shabakaty/downloader/sb2;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/wb2$c;-><init>(Lcom/shabakaty/downloader/sb2;)V

    sput-object v0, Lcom/shabakaty/downloader/wb2;->h:Lcom/shabakaty/downloader/wb2$c;

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/wb2$c;

    sget-object v1, Lcom/shabakaty/downloader/sb2;->C:Lcom/shabakaty/downloader/sb2;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/wb2$c;-><init>(Lcom/shabakaty/downloader/sb2;)V

    sput-object v0, Lcom/shabakaty/downloader/wb2;->i:Lcom/shabakaty/downloader/wb2$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/yb2;->a:Lcom/shabakaty/downloader/yb2;

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/yb2;->i(Lcom/shabakaty/downloader/wb2;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
