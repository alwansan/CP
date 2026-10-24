.class public Lcom/google/android/material/tabs/TabLayout$b;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Lcom/shabakaty/downloader/w35$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic r:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$b;->r:Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/w35;Lcom/shabakaty/downloader/v93;Lcom/shabakaty/downloader/v93;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$b;->r:Lcom/google/android/material/tabs/TabLayout;

    iget-object p3, p2, Lcom/google/android/material/tabs/TabLayout;->d0:Lcom/shabakaty/downloader/w35;

    if-ne p3, p1, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout;->i()V

    :cond_0
    return-void
.end method
