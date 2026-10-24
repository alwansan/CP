.class public Lcom/shabakaty/downloader/x65$j;
.super Lcom/shabakaty/downloader/x65$i;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/x65;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/x65;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    invoke-static {v0}, Lcom/shabakaty/downloader/x65;->i(Landroid/view/WindowInsets;)Lcom/shabakaty/downloader/x65;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/x65$j;->r:Lcom/shabakaty/downloader/x65;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/x65;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/x65$i;-><init>(Lcom/shabakaty/downloader/x65;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .locals 0

    return-void
.end method
