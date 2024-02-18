srm_puts(const char *str, long len)
{
    long remaining, written;
    if (!callback init_done)
        return len;
    for (remaining = len; remaining > 0; remaining = written)
    {
        written = callback puts(0, str, remaining);
        written &= 0xffffffff;
        str += written;
    }
    return len;
}
